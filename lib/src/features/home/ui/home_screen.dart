import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/core/routing/app_router.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/features/home/models/category_data.dart';
import 'package:myschoolapp/src/features/home/models/cours_data.dart';
import 'package:myschoolapp/src/shared/components/forms/input.dart';
import 'package:myschoolapp/src/shared/components/home_components/categorie.dart';
import 'package:myschoolapp/src/shared/components/home_components/cours_item.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';



@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    
  

    final TextEditingController _searshController = TextEditingController();
   
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: context.colorScheme.primary,
      ),
      backgroundColor: context.colorScheme.onPrimary,
      
      body: Column(
        children: [
          Container(
      padding: EdgeInsets.all(23),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: context.colorScheme.primary, // Fond bleu
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
            'Salut! cher visiteur',
                style: context.textTheme.bodyLarge?.copyWith(color:context.colorScheme.onPrimary)
              ),
              Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer, // Fond bleu avec opacité
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: 
                    Stack(
                // clipBehavior: Clip.none,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: context.colorScheme.onPrimary,
                      ),
                      onPressed: () {},
                    ),

                  Positioned(
                    top: 8,
                    right: 6,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: context.colorScheme.error,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),                  ),
              
            ],
          ),
          gapH10,
          Text(
            'Let start',
            style: context.textTheme.bodySmall?.copyWith(color:context.colorScheme.onPrimary)
          ),
          gapH30,
          Expanded(
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Expanded(
                child: Input(
                  controller: _searshController,
                   prefixIcon: Icon(
                      Icons.search,
                      color: context.colorScheme.primary,
                    ),
                ),
                ),
                gapW6,
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 49,
                height: 59,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.sync,
                    color: context.colorScheme.primary,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          )
        


        ],
      ),
    ),
          


Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
           Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  'Nos categories',
                  style: context.textTheme.titleLarge!.copyWith(fontSize: 24)
                  ),
                  gapW4,
                  InkWell(
                    onTap: (){
                    }, 
                    child: Text(
                      'Voir plus',
                      style: context.textTheme.bodySmall!.copyWith(fontSize: 14,color: context.colorScheme.surfaceTint)
                    ),
                  )
                ],
              ),
              gapH12,
              
        ],
      ),
    ),
         
     SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: schoolCategoryDatas.length,
        itemBuilder: (context, index) {
          final category = schoolCategoryDatas[index];
          return Categorie(
            title: category.title,
            icon: category.icon,
          );
           },
      ),
    ),
//profession
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                   'Cours les plus solicite',
                    style: context.textTheme.titleLarge!.copyWith(fontSize: 24)
                    ),
                    gapW4,
                    InkWell(
                      onTap: (){
                      }, 
                      child: Text(
                       'Voir plus',
                        style: context.textTheme.bodySmall!.copyWith(fontSize: 14,color: context.colorScheme.surfaceTint)
                      ),
                    )
                  ],
                ),
                ),
                

          Expanded(
      child:  
      SizedBox(
                width: double.infinity,
                //
                 height: 400,
                child:ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: courses.length,
                    // padding: const EdgeInsets.symmetric(vertical: 12),
                    itemBuilder: (context, index) {
                      final prof = courses[index];
                      return CoursItem(
                        title: prof.title,
                        name: prof.name,
                        contentImage: prof.contentImage,
                        profilImage: prof.profilImage,
                        btnText: prof.btnText,
                        prise: prof.prise,
                        btnTap: () {
                          // Action à exécuter au clic du bouton
                          print('Bouton ${prof.btnText} cliqué pour ${prof.name}');
                        },
                      );
                    },
                  ),
              )
        )
        ],
      ),
    );
  }
}
