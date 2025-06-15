import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import '../logic/providers/owner_provider.dart';
import 'widgets/owner_card.dart';

@RoutePage()
class OwnerListScreen extends ConsumerWidget {
  const OwnerListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ownersAsync = ref.watch(ownersProvider);

    return Scaffold(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      appBar: AppBar(
        
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
        title:Text("Proprietaires", 
            style:  context.textTheme.titleMedium?.copyWith(fontSize: 20,color: context.colorScheme.onSurface,fontWeight: FontWeight.w700 )
            ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: TextStyle(
              color: context.colorScheme.tertiary.withOpacity(0.5), // 👈 remplace par la couleur que tu veux
              fontSize: 16,
            ),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              filled: true,
              fillColor: context.colorScheme.surface.withOpacity(0.5),
            ),
          ),
        ),
          ),
          Expanded(
            child: ownersAsync.when(
              data: (owners) => ListView.builder(
                itemCount: owners.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                          onTap: () {
                            context.pushRoute(
                              PropertiesOwnerRoute(owner: owners[index])
                              );
                          },
                          child:OwnerCard(owner: owners[index])
                );
                },
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          )
        ],
      ),
    );
  }
}