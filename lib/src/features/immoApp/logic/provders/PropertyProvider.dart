import 'package:flutter/material.dart';
import 'package:myschoolapp/src/features/immoApp/logic/model/Property.dart';

class PropertyProvider extends ChangeNotifier {
  final List<Property> _properties = [
    Property(
      id: '1',
      title: "fond de commerce a vendre/louer",
      city: "Yaoundé",
      region: "Centre",
      imageUrl: "https://your-server.com/image1.jpg",
      category: "Bureaux/Fonds de commerce",
      status: "Vendu",
      price: "18 000 000 XAF",
      rooms: 1,
      surface: "1 m2",
    ),
    Property(
      id: '2',
      title: "chambre meublée",
      city: "Deido, Douala",
      region: "Littoral",
      imageUrl: "https://your-server.com/image2.jpg",
      category: "Chambres meublées",
      status: "",
      price: "13 000 XAF",
      rooms: 1,
      surface: "1 m2",
    ),
  ];

  List<Property> get properties => _properties;
}
