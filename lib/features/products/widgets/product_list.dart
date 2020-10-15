import 'package:flutter/material.dart';
import 'package:shopping_cart/features/products/models/product.dart';
import 'package:shopping_cart/features/products/widgets/product_item.dart';

class ProductList extends StatelessWidget {
  final List<Product> _products = [];

  ProductList() {
    _products.add(new Product(id: "1", name: "cotton shirt", price: "20"));
    _products.add(new Product(id: "2", name: "Leather shoes", price: "25"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Catalog'),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) {
          Product _product = _products[index];
          return ProductItem(
            product: _product,
          );
        },
      )),
    );
  }
}
