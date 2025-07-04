import 'dart:io';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

class StorageService {
  final SupabaseClient _client = Supabase.instance.client;
  final String _bucket = 'images';

  Future<String> uploadImage(File file, {String? folder}) async {
    final filename = '${const Uuid().v4()}.${file.path.split('.').last}';
    final path = folder != null ? '$folder/$filename' : filename;

    final storageResponse = await _client.storage
        .from(_bucket)
        .upload(path, file, fileOptions: const FileOptions(upsert: true));

    if (storageResponse.isEmpty) {
      throw Exception('Erreur lors de l’upload de l’image');
    }

    final publicUrl = _client.storage.from(_bucket).getPublicUrl(path);
    return publicUrl;
  }

  Future<List<String>> uploadImages(List<File> files, {String? folder}) async {
    List<String> urls = [];

    for (final file in files) {
      final url = await uploadImage(file, folder: folder);
      urls.add(url);
    }

    return urls;
  }
}
