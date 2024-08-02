class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  String? image;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    this.image = 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
    this.rating,
  });
  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toString(),
      description: json['description'],
      category: json['category'],
      image: json['image'],
    );
  }
  Map<String, dynamic> get jSonData {
    return {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    };
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(json) {
    return RatingModel(
      rate: json['rate'],
      count: json['count'],
    );
  }
  Map<String, dynamic> get jSonData {
    return {
      'rate': rate,
      'count': count,
    };
  }
}
