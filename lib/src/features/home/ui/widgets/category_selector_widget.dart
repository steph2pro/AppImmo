import 'package:flutter/material.dart';

class CategorySelectorWidget extends StatelessWidget {
  final List<String> icons;
  final int selectedIndex;

  const CategorySelectorWidget({
    required this.icons,
    required this.selectedIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: icons.asMap().entries.map((entry) {
        final index = entry.key;
        final iconPath = entry.value;
        final isSelected = index == selectedIndex;

        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    iconPath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              if (isSelected)
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
