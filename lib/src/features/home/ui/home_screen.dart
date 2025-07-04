import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/features/home/logic/providers/user_provider.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/category_selector_widget.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/header_widget.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/property_card.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/property_card_widget.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/search_filter_widget.dart';
import 'package:myschoolapp/src/features/home/ui/widgets/section_title_widget.dart';
import 'package:myschoolapp/src/features/property/logic/providers/property_provider.dart';
// import 'package:myschoolapp/src/features/property/logic/models/property_provider.dart';

import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  final List<String> categories = [
    'assets/images/categorie1.png',
    'assets/images/categorie2.png',
    'assets/images/categorie1.png',
    'assets/images/categorie2.png',
    'assets/images/categorie1.png',
    'assets/images/categorie2.png',
    'assets/images/categorie1.png',
    'assets/images/categorie2.png',
    // ... tes autres catégories
  ];

  @override
  Widget build(BuildContext context) {
    final propertyAsync = ref.watch(propertyListProvider);
    final userInfoAsync = ref.watch(userInfoProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: userInfoAsync.when(
          loading: () => const Text("Chargement..."),
          error: (error, _) => const Text("Erreur utilisateur"),
          data: (user) => HeaderWidget(
            username: user.nom,
            avatarUrl: user.profil ?? '',
          ),
        ),
      ),
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                SearchFilterWidget(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value.toLowerCase();
                    });
                  },
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategorySelectorWidget(icons: categories, selectedIndex: 0),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SectionTitleWidget(title: "Tous les Biens", onSeeAll: () {}),
                const SizedBox(height: 12),

                propertyAsync.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Center(child: Text('Erreur: $error')),
                  data: (properties) {
                    final filteredProperties = properties.where((property) {
                      final title = property.propriete.titre.toLowerCase();
                      final description = property.propriete.description.toLowerCase();
                      return title.contains(searchQuery) || description.contains(searchQuery);
                    }).toList();

                    if (filteredProperties.isEmpty) {
                      return SizedBox(
                        height: 280,
                        child: Center(
                          child: Text(
                            'Aucune propriété trouvée.',
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: context.colorScheme.tertiary.withOpacity(0.6),
                            ),
                          ),
                        ),
                      );
                    }

                    return SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filteredProperties.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.pushRoute(PropertyDetailsRoute(property: filteredProperties[index]));
                            },
                            child: PropertyCardWidget(property: filteredProperties[index].propriete),
                          );
                        },
                      ),
                    );
                  },
                ),

                const SizedBox(height: 24),
                const Text(
                  "Biens Recents ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 12),

                propertyAsync.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Center(child: Text('Erreur: $error')),
                  data: (properties) {
                    final filteredProperties = properties.where((property) {
                      final title = property.propriete.titre.toLowerCase();
                      final description = property.propriete.description.toLowerCase();
                      return title.contains(searchQuery) || description.contains(searchQuery);
                    }).toList();

                    if (filteredProperties.isEmpty) {
                      return Center(
                        child: Text(
                          'Aucune propriété trouvée.',
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: context.colorScheme.tertiary.withOpacity(0.6),
                          ),
                        ),
                      );
                    }

                    return Column(
                      children: filteredProperties.map((property) {
                        return GestureDetector(
                          onTap: () {
                            context.pushRoute(PropertyDetailsRoute(property: property));
                          },
                          child: PropertyCard(property: property.propriete),
                        );
                      }).toList(),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   ConsumerState<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   final TextEditingController _searchController = TextEditingController();

//   final List<String> categories = [
//     'assets/images/categorie1.png',
//     'assets/images/categorie2.png',
//     'assets/images/categorie1.png',
//     'assets/images/categorie2.png',
//     'assets/images/categorie1.png',
//     'assets/images/categorie2.png',
//     'assets/images/categorie1.png',
//     'assets/images/categorie2.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final propertyAsync = ref.watch(propertyListProvider);
//     final userInfoAsync = ref.watch(userInfoProvider);

//     return Scaffold(
      
//     appBar: AppBar(
//       automaticallyImplyLeading: false,
//       title: userInfoAsync.when(
//         loading: () => const Text("Chargement..."),
//         error: (error, _) => const Text("Erreur utilisateur"),
//         data: (user) => 
//             // if (user.profil != null && user.profil!.isNotEmpty)
//             HeaderWidget(
//               username: user.nom,
//               avatarUrl: user.profil!,
//             ),
           
            
//       ),
//     ),
//       backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 16),
//                 const SearchFilterWidget(),
//                 const SizedBox(height: 16),
//                 SizedBox(
//                   height: 80,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       CategorySelectorWidget(icons: categories, selectedIndex: 0),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 SectionTitleWidget(title: "All Property", onSeeAll: () {}),
//                 const SizedBox(height: 12),

//                 // Horizontal Property Cards
//                 propertyAsync.when(
//                   loading: () => const Center(child: CircularProgressIndicator()),
//                   error: (error, _) => Center(child: Text('Erreur: $error')),
//                   data: (properties) => SizedBox(
//                     height: 280,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: properties.length,
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             context.pushRoute(PropertyDetailsRoute(property: properties[index]));
//                           },
//                           child: PropertyCardWidget(property: properties[index].propriete),
//                         );
//                         // PropertyCardWidget(property: properties[index]);
//                       },
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 24),
//                 const Text(
//                   "Featured Property",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 const SizedBox(height: 12),

//                 // Vertical Featured Cards
//                 propertyAsync.when(
//                   loading: () => const Center(child: CircularProgressIndicator()),
//                   error: (error, _) => Center(child: Text('Erreur: $error')),
//                   data: (properties) => Column(
//                     children: properties
//                         .map((property) 
//                          {
//                           return GestureDetector(
//                             onTap: () {
//                               context.pushRoute(
//                                 PropertyDetailsRoute(property: property)
//                               );
//                             },
//                             child: PropertyCard(property: property.propriete)
//                           );
//                         })
//                         .toList(),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

