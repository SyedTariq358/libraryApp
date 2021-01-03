import 'package:flutter/material.dart';
import 'package:libraryapp/models/product.dart';
import 'product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,


  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(children:<Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:product.color,
            borderRadius: BorderRadius.circular(5.0), 
          ),
        child: Hero(tag: product.id, child: Image.asset(product.image))
        ),
       // Hero(tag: null, child: null)
      Text(product.title),
      Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
      ]),

      
    );
  }
}