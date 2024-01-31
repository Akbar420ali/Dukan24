class ProductModel {
  int id;
  String image;
  String name;
  int? quantity;
  double price;
  double rating;
  String reviews;
  String description;
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    this.quantity,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.description
  });
}