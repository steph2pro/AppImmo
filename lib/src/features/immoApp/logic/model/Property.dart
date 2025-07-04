// class Property {
//   final String title;
//   final String city;
//   final String region;
//   final String imageUrl;
//   final String category;
//   final String status;
//   final String price;
//   final int rooms;
//   final String surface;
//   final bool isFavorite;

//   Property({
//     required this.title,
//     required this.city,
//     required this.region,
//     required this.imageUrl,
//     required this.category,
//     required this.status,
//     required this.price,
//     required this.rooms,
//     required this.surface,
//     this.isFavorite = false,
//   });
// }
class Property {
  final String id;
  final String title;
  final String city;
  final String region;
  final String imageUrl;
  final String category;
  final String status;
  final String price;
  final int rooms;
  final String surface;

  Property({
    required this.id,
    required this.title,
    required this.city,
    required this.region,
    required this.imageUrl,
    required this.category,
    required this.status,
    required this.price,
    required this.rooms,
    required this.surface,
  });

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        id: json['id'],
        title: json['title'],
        city: json['city'],
        region: json['region'],
        imageUrl: json['imageUrl'],
        category: json['category'],
        status: json['status'],
        price: json['price'],
        rooms: json['rooms'],
        surface: json['surface'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'city': city,
        'region': region,
        'imageUrl': imageUrl,
        'category': category,
        'status': status,
        'price': price,
        'rooms': rooms,
        'surface': surface,
      };
}
