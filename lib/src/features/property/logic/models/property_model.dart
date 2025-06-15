class PropertyModel {
  final String title;
  final String location;
  final int price;
  final int area;
  final int bedrooms;
  final int bathrooms;
  final int kitchens;
  final String image;
  
  final String address;
  final List<String> imagesUrl;
  final int sqft;
  final String ownerName;
  final String ownerRole;
  final String description;
  final double rating;
  final String ownerPhone;

  PropertyModel({
    required this.title,
    required this.location,
    required this.price,
    required this.area,
    required this.bedrooms,
    required this.bathrooms,
    required this.kitchens,
    required this.image,
    required this.imagesUrl,
    required this.address,
    required this.sqft,
    required this.ownerName,
    required this.ownerRole,
    required this.description,
    required this.rating,
    required this.ownerPhone,
  });
}