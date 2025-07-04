import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myschoolapp/src/features/immoApp/logic/provders/PropertyProvider.dart';
import 'package:myschoolapp/src/features/immoApp/ui/widgets/product_widget.dart';
import 'package:provider/provider.dart';
@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final properties = context.watch<PropertyProvider>().properties;

    return Scaffold(
      appBar: AppBar(title: const Text("Biens à louer")),
      body: ListView.builder(
        itemCount: properties.length,
        itemBuilder: (context, index) {
          return PropertyCard(property: properties[index]);
        },
      ),
    );
  }
}
