import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';


class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const OnboardingItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Spacer(),
            Expanded(
              child: Image.asset(
                imageUrl,
                width: double.infinity,
              ),
            ),
            
            // indicator,

            gapH30,

            Expanded(
              child: Column(
                children: [
                   RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:   '${title} ', 
                          style: context.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700)
                          ),
          
                        
                    ],
                  ),
                ),
                
                  gapH20,
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ).animate().scale(delay: 50.milliseconds).fadeIn();
  }
}
