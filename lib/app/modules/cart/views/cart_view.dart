import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup/app/modules/Checkout/checkout.dart';

import '../../../../utils/constants.dart';
import '../../../components/custom_button.dart';
import '../../../components/no_data.dart';
import '../../../components/screen_title.dart';
import '../controllers/cart_controller.dart';
import 'widgets/cart_item.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset( "assets/images/logo-head.png",height: 55,
          fit: BoxFit.cover,),
        actions: [
          Padding(padding: EdgeInsets.all(12) ,
            child: IconButton(
              icon: Icon(FontAwesomeIcons.shoppingCart,color: Colors.grey,),

              onPressed: (){
                Navigator.pushNamed(context,'checkout');

              },
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: GetBuilder<CartController>(
          builder: (_) => ListView(
            children: [

              controller.products.isEmpty
                ? const NoData(text: 'No Products in Your Cart Yet!')
                : ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) => CartItem(
                      product: controller.products[index],
                    ).animate().fade().slideX(
                      duration: const Duration(milliseconds: 300),
                      begin: -1,
                      curve: Curves.easeInSine,
                    ),
                    shrinkWrap: true,
                    primary: false,
                  ),
              30.verticalSpace,
              Visibility(
                visible: controller.products.isNotEmpty,
                child: Row(
                  children: [
                    20.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total:', style: theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 18.sp,
                        )),
                        10.verticalSpace,

                      ],
                    ),
                  ],
                ).animate().fade().slideX(
                  duration: const Duration(milliseconds: 300),
                  begin: -1,
                  curve: Curves.easeInSine,
                ),
              ),

              30.verticalSpace,
        Container(

          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              )
          ),
          child: Padding(

            padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,

                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Sub Total", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),),
                    Text(
                      '\Rs:${controller.total.toStringAsFixed(2)}',
                      style: theme.textTheme.displayLarge?.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: theme.primaryColor.withOpacity(0.5),
                        decorationThickness: 1,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(
                              color: theme.textTheme.displayLarge!.color!,
                              offset: const Offset(0, -5)
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,

                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text("Total", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,

                    ),),
                    Text(
                      '\Rs:${controller.total.toStringAsFixed(2)}',
                      style: theme.textTheme.displayLarge?.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: theme.primaryColor.withOpacity(0.5),
                        decorationThickness: 1,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(
                              color: theme.textTheme.displayLarge!.color!,
                              offset: const Offset(0, -5)
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10),
                30.verticalSpace,
                Visibility(
                  visible: controller.products.isNotEmpty,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: CustomButton(
                      text: 'Purchase Now',backgroundColor: Colors.deepOrange,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => checkout(
                              // CartItem: controller.products,
                              // totalAmount: controller.total,
                            ),
                          ),
                        );
                      },

                      fontSize: 16.sp,
                      radius: 12.r,
                      verticalPadding: 12.h,
                      hasShadow: true,
                      shadowColor: theme.primaryColor,
                      shadowOpacity: 0.3,
                      shadowBlurRadius: 4,
                      shadowSpreadRadius: 0,
                    ).animate().fade().slideY(
                      duration: const Duration(milliseconds: 300),
                      begin: 1,
                      curve: Curves.easeInSine,
                    ),
                  ),
                ),



              ],

            ),
          ),

        ),
            ],

          ),
        ),

      ),

    );
  }
}


