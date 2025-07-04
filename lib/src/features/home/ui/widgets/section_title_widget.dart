// widgets/section_title_widget.dart
import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;

  const SectionTitleWidget({required this.title, required this.onSeeAll, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const Spacer(),
        GestureDetector(onTap: onSeeAll, child: const Text("Voir tout >", style: TextStyle(color: Colors.blue))),
      ],
    );
  }
}
