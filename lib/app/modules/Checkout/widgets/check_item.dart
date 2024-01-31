import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:login_signup/app/data/models/product_model.dart';
import 'package:login_signup/app/modules/cart/controllers/cart_controller.dart';

import '../../../../../utils/constants.dart';
import '../../../../data/models/product_model.dart';
import '../../controllers/cart_controller.dart';

class checkItem extends GetView<CartController> {
  final ProductModel product;
  const checkItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Stack(
              children: [
                Container(


                  width: 125.w,
                  height: 125.h,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Image.asset(
                        product.image!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 125.h,
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          20.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.verticalSpace,
              Text(
                product.name!,
                style: theme.textTheme.displaySmall,
                overflow: TextOverflow.ellipsis,
              ),

              5.verticalSpace,
              Text('\Rs:${product.price}', style: theme.textTheme.displayLarge?.copyWith(
                fontSize: 18.sp,
              ),),
              10.verticalSpace,
              GetBuilder<CartController>(
                id: 'ProductQuantity',
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => controller.onIncreasePressed(product.id!),
                      child: SvgPicture.asset(Constants.decreaseIcon,color: Colors.black),
                    ),
                    10.horizontalSpace,
                    Text('${product.quantity}', style: theme.textTheme.displaySmall),
                    10.horizontalSpace,
                    GestureDetector(
                      onTap: () => controller.onDecreasePressed(product.id!),
                      child: SvgPicture.asset(Constants.increaseIcon,color: Colors.black,),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () => controller.onDeletePressed(product.id!),
            customBorder: const CircleBorder(),
            child: Container(
              padding: EdgeInsets.all(10.r),
              child: SvgPicture.asset(
                Constants.cancelIcon,
                width: 20.w,
                height: 20.h,
                color: theme.textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}