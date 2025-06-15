import 'package:myschoolapp/src/features/property/logic/models/property_model.dart';

import '../models/owner_model.dart';

class OwnerService {
  Future<List<OwnerModel>> fetchOwners() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      OwnerModel(
        name: 'Manish Verdin',
        email: 'example@gmail.com',
        ownerPhone: "+1234567890",
        avatarUrl: 'https://th.bing.com/th/id/OIP.sC5gWwVXXiQnXtGV2bR8JwHaHa?pid=ImgDet&w=474&h=474&rs=1&cb=idpwebpc1',
        properties: [

        PropertyModel(
        title: "Appartement #1",
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
      )
            ],
      ),
      OwnerModel(
        name: 'Cody Fisher',
        email: 'example@gmail.com',
        ownerPhone: "+1234567890",
        avatarUrl: 'https://th.bing.com/th/id/OIP.sC5gWwVXXiQnXtGV2bR8JwHaHa?pid=ImgDet&w=474&h=474&rs=1&cb=idpwebpc1',
        properties: [
          PropertyModel(
        title: "Appartement #2",
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
      )
           ],
      ),
    ];
  }
}