// lib/src/features/home/services/property_service.dart

import 'dart:async';
import '../models/property_model.dart';

class PropertyService {
  Future<List<PropertyModel>> fetchProperties() async {
    await Future.delayed(const Duration(seconds: 2)); // Simule un appel réseau
    return List.generate(5, (index) {
      return PropertyModel(
        title: "Appartement #$index",
        location: "NY, New York",
        price: 267000,
        area: 2000,
        bedrooms: 4,
        bathrooms: 3,
        kitchens: 1,
        image: "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
        address: "123 Main Street",
        sqft: 1800,
        ownerName: "James Butler",
        ownerRole: "Propriétaire",
        description: "Très bel appartement dans un quartier calme.",
        rating: 4.5,
        imagesUrl: [
          "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
          "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
          "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
          "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
          "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
          "https://th.bing.com/th/id/R.5270394d2817b966c7ba81a73bc60ec7?rik=0LHTP4vwUCD7UA&pid=ImgRaw&r=0",
        ],
        ownerPhone: "+1234567890",
      );
    });
  }
}
