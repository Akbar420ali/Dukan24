import 'package:flutter/material.dart';
import 'package:login_signup/Part1/models/Product.dart';

import '../../util/constants.dart';


class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              boxShadow:[BoxShadow(
                color: Colors.white,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),],

              border: Border.all(
                color: Colors.grey,
              )
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(kDefaultPaddin),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white,

                      ),
                    ),

                    child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(product.image),


                    ),


                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                  child: Text(
                    // products is out demo list
                    product.title,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ),
                Text(
                  "\Rs:${product.price}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )

              ],

            ),
          ),

        ],
      ),
    );
  }
}
