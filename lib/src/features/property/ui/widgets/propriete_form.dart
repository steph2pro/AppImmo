import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/features/property/logic/providers/propriete_provider.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:myschoolapp/src/shared/services/storage_service.dart';
import 'package:uuid/uuid.dart';


class ProprieteForm extends ConsumerStatefulWidget {
  const ProprieteForm({super.key});

  @override
  ConsumerState<ProprieteForm> createState() => _ProprieteFormState();
}

class _ProprieteFormState extends ConsumerState<ProprieteForm> {
  final _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();

  final titreCtrl = TextEditingController();
  final descriptionCtrl = TextEditingController();
  final typeCtrl = TextEditingController();
  final prix = TextEditingController();
  final localisationCtrl = TextEditingController();
  final nbrChambreCtrl = TextEditingController();
  final nbrSalleBainCtrl = TextEditingController();
  final nbrCuisineCtrl = TextEditingController();

  File? selectedImage;
  List<File> selectedImagesVues = [];

  @override
Widget build(BuildContext context) {
  final loading = ref.watch(proprieteFormProvider).isLoading;

  return Form(
    key: _formKey,
    child: SingleChildScrollView(
      child: Column(
        children: [
          _buildTextField(
            controller: titreCtrl,
            hintText: 'Titre',
            icon: Icons.title,
            color: Colors.blue,
            context: context,
          ),
          gapH6,
          _buildTextField(
            controller: descriptionCtrl,
            hintText: 'Description',
            icon: Icons.description,
            color: Colors.orange,
            context: context,
          ),
          gapH6,
          _buildTextField(
            controller: typeCtrl,
            hintText: 'Type',
            icon: Icons.category,
            color: Colors.green,
            context: context,
          ),
          gapH6,
          _buildTextField(
            controller: prix,
            hintText: 'Prix',
            icon: Icons.category,
            color: Colors.green,
            context: context,
          ),
          gapH6,
          _buildTextField(
            controller: localisationCtrl,
            hintText: 'Localisation',
            icon: Icons.location_on,
            color: Colors.red,
            context: context,
          ),

          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: pickMainImage,
                child: const Text("Choisir image principale"),
              ),
              const SizedBox(width: 10),
              if (selectedImage != null)
                Image.file(selectedImage!, height: 50, width: 50, fit: BoxFit.cover),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: pickImagesVues,
                child: const Text("Ajouter images vues"),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: selectedImagesVues
                        .map((img) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Image.file(img, width: 50, height: 50, fit: BoxFit.cover),
                            ))
                        .toList(),
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 16),
          _buildTextField(
            controller: nbrChambreCtrl,
            hintText: 'Nombre de chambres',
            icon: Icons.bedroom_parent,
            color: Colors.purple,
            context: context,
          ),
          gapH6,
          _buildTextField(
            controller: nbrSalleBainCtrl,
            hintText: 'Nombre de salles de bain',
            icon: Icons.bathtub,
            color: Colors.indigo,
            context: context,
          ),
          gapH6,
          _buildTextField(
            controller: nbrCuisineCtrl,
            hintText: 'Nombre de cuisines',
            icon: Icons.kitchen,
            color: Colors.brown,
            context: context,
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: loading ? null : _submit,
            child: loading
                ? const CircularProgressIndicator()
                : const Text('Enregistrer la propriété'),
          ),
        ],
      ),
    ),
  );
}


  Future<void> pickMainImage() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => selectedImage = File(picked.path));
    }
  }

  Future<void> pickImagesVues() async {
    final picked = await picker.pickMultiImage();
    if (picked.isNotEmpty) {
      setState(() => selectedImagesVues.addAll(picked.map((e) => File(e.path))));
    }
  }

  void _submit() async {
  if (!_formKey.currentState!.validate()) return;

  final scaffoldMessenger = ScaffoldMessenger.of(context);
  final storageService = StorageService();

  try {
    // 🔁 Affiche un loading temporaire
    ref.read(proprieteFormProvider.notifier).state = const AsyncLoading();

    // ✅ Upload image principale
    String imageUrl = '';
    if (selectedImage != null) {
      imageUrl = await storageService.uploadImage(selectedImage!, folder: 'proprietes/cover');
    }

    // ✅ Upload images vues
    List<String> imagesVuesUrls = [];
    if (selectedImagesVues.isNotEmpty) {
      imagesVuesUrls = await storageService.uploadImages(selectedImagesVues, folder: 'proprietes/vues');
    }

    // ✅ Création du modèle après upload
    final propriete = ProprieteModel(
      id: const Uuid().v4(),
      titre: titreCtrl.text,
      description: descriptionCtrl.text,
      type: typeCtrl.text,
      prix: int.parse(prix.text),
      localisation: localisationCtrl.text,
      image: imageUrl,
      imagesVues: imagesVuesUrls,
      nbrChambre: int.tryParse(nbrChambreCtrl.text),
      nbrSalleBain: int.tryParse(nbrSalleBainCtrl.text),
      nbrCuisine: int.tryParse(nbrCuisineCtrl.text),
      iduser: '1', // Récupère dynamiquement si besoin
    );

    // ✅ Enregistrement dans Supabase
    await ref.read(proprieteFormProvider.notifier).submitPropriete(propriete);

    scaffoldMessenger.showSnackBar(
      const SnackBar(content: Text('✅ Propriété enregistrée avec succès')),
    );
  } catch (e) {
    scaffoldMessenger.showSnackBar(
      SnackBar(content: Text('❌ Erreur : ${e.toString()}')),
    );
  }
}

  @override
  void dispose() {
    titreCtrl.dispose();
    descriptionCtrl.dispose();
    typeCtrl.dispose();
    localisationCtrl.dispose();
    nbrChambreCtrl.dispose();
    nbrSalleBainCtrl.dispose();
    nbrCuisineCtrl.dispose();
    super.dispose();
  }
  
  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    required Color color,
    required BuildContext context,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
              fillColor: context.colorScheme.surface.withOpacity(0.5),
        prefixIcon: Icon(icon, color: color),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

}
