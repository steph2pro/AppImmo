// widgets/search_filter_widget.dart
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class SearchFilterWidget extends StatelessWidget {
  const SearchFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:  TextField(
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
        const SizedBox(width: 10),
        // SizedBox(
        //   width: 100,
        // child: 
    Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.only(right: 15),
      child: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    IconButton(
        onPressed: () {},
        icon:  Icon(Icons.filter_list, color: context.colorScheme.onPrimary,size: 18, ),
      ),
    // const SizedBox(width: 8), // Espace entre l'icône et le texte
     Text(
      'Filtrer',
      style: context.textTheme.titleSmall?.copyWith(fontSize: 14,color: context.colorScheme.onPrimary )
    ),
  ],
)

)

    // ),

        
      ],
    );
  }
}
