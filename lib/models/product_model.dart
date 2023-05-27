import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class Product extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String category;
  @HiveField(3)
  final String imageUrl;
  @HiveField(4)
  final double price;
  @HiveField(5)
  final bool isRecommended;
  @HiveField(6)
  final bool isPopular;
  @HiveField(7)
  final String? description;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
    this.description,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      id: snap.id,
      name: snap['name'],
      category: snap['category'],
      imageUrl: snap['imageUrl'],
      price: snap['price'].toDouble(),
      isRecommended: snap['isRecommended'],
      isPopular: snap['isPopular'],
      description: snap['description'],
    );
    return product;
  }

  @override
  List<Object?> get props => [
    id,
    name,
    category,
    imageUrl,
    price,
    isRecommended,
    isPopular,
    description,
  ];

  static List<Product> products = [
    Product(
      id: '3',
      name: 'Painting #1',
      category: 'Painting',
      imageUrl:
      'https://mymodernmet.com/wp/wp-content/uploads/2018/05/painting-ideas-3-1.jpg', //https://unsplash.com/photos/dO9A6mhSZZY
      price: 230,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      id: '2',
      name: 'Pottery Art #2',
      category: 'Pottery Art',
      imageUrl:
      'https://chopra.brightspotcdn.com/dims4/default/b494bd5/2147483647/strip/true/crop/5552x2197+0+384/resize/2840x1124!/quality/90/?url=http%3A%2F%2Fchopra-brightspot.s3.amazonaws.com%2Feb%2F6d%2F5bd353a643e9be5666d0ba15e678%2Fgettyimages-1304715521.jpg', //https://unsplash.com/photos/Viy_8zHEznk
      price: 300,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      id: '1',
      name: 'Pottery Art #1',
      category: 'Pottery Art',
      imageUrl:
      'https://cdn.shopify.com/s/files/1/1894/6603/products/20230228_104020.jpg?v=1677677228&width=990', //https://unsplash.com/photos/5LIInaqRp5s
      price: 250,
      isRecommended: true,
      isPopular: true,
    ),

  ];
}