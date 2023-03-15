class Vendor {
  final String title;
  final String image;
  final String distance;
  final String categoryName;
  final String address;
  final List<Product> products;

  Vendor({
    required this.title,
    required this.image,
    required this.distance,
    required this.categoryName,
    required this.address,
    required this.products,
  });
}

class Product {
  final String name;
  final String image;
  final List description;
  final List imagecarousel;
  final double price;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imagecarousel,
    required this.image,
  });
}
