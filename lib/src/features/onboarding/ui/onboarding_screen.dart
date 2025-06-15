import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/shared/components/buttons/button.dart';
import 'package:myschoolapp/src/shared/components/onboarding/onboarding_item.dart';
import 'package:myschoolapp/src/shared/components/onboarding/page_indicators.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // backgroundColor: context.colorScheme.onPrimary,
        title:  Align(
          alignment: Alignment.topLeft,
          child: TextButton(
                    onPressed: (){
                      context.router.push(const HomeRouteRoute());
                    }, 
                    child: Text(
                      'Skip',
                      style: context.textTheme.bodySmall!.copyWith(fontSize: 16,color: context.colorScheme.primary )
                    ),
                  )
        ),
      ),
      // backgroundColor: context.colorScheme.onPrimary,
      
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children:  [
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding1.png',
                  title:  "Trouvez la maison de vos rêves",
                  description: 'Trouvez le bien idéal selon vos critères.'
                  ),
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding2.png',
                  title:  ' Vendez rapidement et facilement',
                  description: 'Publiez, gérez et concluez rapidement vos ventes.'
                   ),
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding3.png',
                  title: 'Louez en toute sérénité',
                  description: 'Proposez ou trouvez une location en toute simplicité.'
                  ),
              ],
            ),
          ),
          
             Expanded(
            child: Column(
              children: [
                Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 
                    SizedBox(
                      width: 100,
                      child:  TextButton(
                        child: Text('Back'),
                        onPressed: () {
                           if (_currentIndex != 0) {
                            _controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn,
                            );
                          }
                        },
                      )
                      ,
                    ),

                    PageIndicators(
                      index: _currentIndex,
                      currentIndex: _currentIndex,
                    ),
                    if(_currentIndex != 2)...[
                        SizedBox(
                      width:   110 ,
                      child:  Button.primary(
                        title:  'Next',
                        onPressed: (){
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn);
                         
                        },
                      ) ,

                    ),
                    ]else...[
                        Expanded(child: ElevatedButton(
                     onPressed: (){
                           context.router.push(const LoginRoute());

                            print("object");
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:  context.colorScheme.primary ,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
                            child: Text('Get started'),
                          ),
                        ))
                    ],
                    
                   
             
                  ],
                ),


                )
                
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
