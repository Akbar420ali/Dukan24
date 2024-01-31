import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';
import '../data/models/product_model.dart';
import '../modules/base/controllers/base_controller.dart';
import '../routes/app_pages.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PRODUCT_DETAILS, arguments: product),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 150,
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
                    padding: EdgeInsets.all(20),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    // products is out demo list
                    product.name,
                    style: TextStyle(color: Colors.black),
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