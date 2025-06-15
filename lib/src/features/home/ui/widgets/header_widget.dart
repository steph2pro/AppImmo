// widgets/header_widget.dart
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class HeaderWidget extends StatelessWidget {
  final String username;
  final String avatarUrl;

  const HeaderWidget({required this.username, required this.avatarUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
    child: 
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Hello!", 
              style:  context.textTheme.titleSmall?.copyWith(fontSize: 16,color: context.colorScheme.onSurface )),
            gapW10,
            Text(username, 
            style:  context.textTheme.titleMedium?.copyWith(fontSize: 20,color: context.colorScheme.onSurface,fontWeight: FontWeight.w700 )
            ),
          ],
        ),
        
        CircleAvatar(backgroundImage: 
        AssetImage(avatarUrl),
         radius: 25),
        // CircleAvatar(backgroundImage: NetworkImage(avatarUrl), radius: 20),
      ],
    )
    );
  }
}
