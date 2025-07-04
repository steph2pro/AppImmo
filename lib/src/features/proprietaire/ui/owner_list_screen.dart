import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import '../logic/providers/owner_provider.dart';
import 'widgets/owner_card.dart';

@RoutePage()
class OwnerListScreen extends ConsumerStatefulWidget {
  const OwnerListScreen({super.key});

  @override
  ConsumerState<OwnerListScreen> createState() => _OwnerListScreenState();
}

class _OwnerListScreenState extends ConsumerState<OwnerListScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final ownersAsync = ref.watch(ownersProvider);

    return Scaffold(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
        title: Text(
          "Propriétaires",
          style: context.textTheme.titleMedium?.copyWith(
            fontSize: 20,
            color: context.colorScheme.onSurface,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
              decoration: InputDecoration(
                hintText: "Rechercher par nom ou email...",
                hintStyle: TextStyle(
                  color: context.colorScheme.tertiary.withOpacity(0.5),
                  fontSize: 16,
                ),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: context.colorScheme.surface.withOpacity(0.5),
              ),
            ),
          ),
          Expanded(
            child: ownersAsync.when(
              data: (owners) {
                final filteredOwners = owners.where((owner) {
                  final name = owner.user.nom.toLowerCase();
                  final email = owner.user.email.toLowerCase();
                  return name.contains(searchQuery) || email.contains(searchQuery);
                }).toList();

                if (filteredOwners.isEmpty) {
                  return Center(
                    child: Text(
                      'Aucun propriétaire trouvé.',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: context.colorScheme.tertiary.withOpacity(0.6),
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  itemCount: filteredOwners.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.pushRoute(
                          PropertiesOwnerRoute(owner: filteredOwners[index]),
                        );
                      },
                      child: OwnerCard(owner: filteredOwners[index]),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Erreur : $e')),
            ),
          ),
        ],
      ),
    );
  }
}
