import 'package:flutter/material.dart';
import 'package:shopping_cart/features/products/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({@required Product product})
      : assert(product != null),
        _product = product;
  final Product _product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: ListTile(
              title: Text(
                '${_product.name}',
              ),
              subtitle: Text('${_product.price}'),
              trailing: RaisedButton(
                  onPressed: () {},
                  child: Text('Buy', style: TextStyle(color: Colors.white)),
                  color: Colors.green),
              // leading: ProductListItemImageView(url: widget._product.imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
