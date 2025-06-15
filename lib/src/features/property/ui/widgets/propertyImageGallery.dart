
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';
import 'package:photo_view/photo_view.dart';

class PropertyImageGallery extends StatelessWidget {
  final List<String> images;
  final bool showAll;
  final VoidCallback onToggle;

  const PropertyImageGallery({
    super.key,
    required this.images,
    required this.showAll,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = MediaQuery.of(context).size.width > 400 ? 3 : 2;
    final imagesToShow = showAll ? images : images.take(2).toList();
    final extraCount = images.length - imagesToShow.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: imagesToShow.length + (showAll || extraCount <= 0 ? 0 : 1),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.3,
          ),
          itemBuilder: (context, index) {
            if (!showAll && index == imagesToShow.length) {
              return GestureDetector(
                onTap: onToggle,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(images[index], fit: BoxFit.cover),

                    // ClipRRect(
                    //   borderRadius: BorderRadius.zero,
                    //   child: Image.network(images[index], fit: BoxFit.cover),
                    // ),
                    Container(
                      color: context.colorScheme.onSurface.withOpacity(0.5) ,
                      alignment: Alignment.center,
                      child: Text(
                        '+$extraCount',
                        style: context.textTheme.titleLarge?.copyWith(
                          color: context.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold ,
                          fontSize: 20,
                        )
                      ),
                    ),
                  ],
                ),
              );
            }

            final imageUrl = imagesToShow[index];
            return GestureDetector(
              onTap: () => _showImageFullScreen(context, imageUrl),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
            );
          },
        ),
        if (showAll)
          Align(
            alignment: Alignment.centerRight,
            child: TextButton.icon(
              onPressed: onToggle,
              icon: const Icon(Icons.expand_less),
              label:  Text("Réduire",style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.primary),),
            ),
          )
      ],
    );
  }

  void _showImageFullScreen(BuildContext context, String imageUrl) {
    // showDialog(
    //   context: context,
    //   builder: (_) => Dialog(
    //     backgroundColor: context.colorScheme.tertiary.withOpacity(0.5) ,
    //     insetPadding: const EdgeInsets.all(16),
    //     child: 
    //       ClipRRect(
    //         borderRadius: BorderRadius.circular(12),
    //         child: 
    //       PhotoView(
    //         imageProvider: NetworkImage(imageUrl),
    //         backgroundDecoration:  BoxDecoration(color: context.colorScheme.onSurface.withOpacity(0.5)),
    //       ),
    //     ),
    //   ),
    // );
    showModalBottomSheet(
  context: context,
  isScrollControlled: true,
  backgroundColor: context.colorScheme.tertiary.withOpacity(0.5),
  builder: (context) => SizedBox(
    height: MediaQuery.of(context).size.height,
    child: PhotoView(
      imageProvider: NetworkImage(imageUrl),
      backgroundDecoration:  BoxDecoration(color: context.colorScheme.tertiary.withOpacity(0.5)),
    ),
  ),
);

  }
}
