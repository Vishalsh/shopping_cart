import 'package:meta/meta.dart';

class Product {
  const Product(
      {@required this.id,
        @required this.name,
        @required this.price});

  final String id;
  final String name;
  final String price;
}