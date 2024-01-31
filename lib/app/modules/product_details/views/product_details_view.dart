import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badges;


import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../utils/cart_provider.dart';
import '../../../../utils/constants.dart';
import '../../../components/custom_button.dart';
import '../controllers/product_details_controller.dart';
import 'widgets/rounded_button.dart';
import 'widgets/size_item.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    // final cart = Provider.of<cartProvider>(context);
    int cartItemCount = 0;

    return Scaffold(
      appBar: AppBar(

        title: Image.asset( "assets/images/header.png",height: 55,
          fit: BoxFit.cover,),
        actions: [

          Padding(
            padding: EdgeInsets.all(12) ,
            child: badges.Badge(
              badgeContent: Text('${"$cartItemCount"}',style: TextStyle(color: Colors.white),),
              child: IconButton(
                icon: Icon(FontAwesomeIcons.shoppingCart,color: Colors.grey,),

                onPressed: (){
                  Navigator.pushNamed(context,'cart');

                },
              ),
            ),
          )
        ],



        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 500,
                      height: 300,
                      child: Expanded(
                        child: Hero(
                          tag: "${controller.product.id}",
                          child: Image.asset(
                            height: 170,
                            width: 170,
                           controller.product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 30,height: 30,),
                    Text(
                     controller.product.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                     controller.product.description,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize:11 ),
                    ),
                    Container(
                      width: 500,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 40,),
                          Text("Demo Pharmacy",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),),
                          SizedBox(height: 20,),
                          RichText(
                            text: TextSpan(
                              children: [

                                TextSpan(
                                  text: "\Rs:${controller.product.price}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                      20.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: CustomButton(
                          text: 'Add to Cart',backgroundColor: Colors.deepOrange,

                          onPressed: () => controller.onAddToCartPressed(),




                          // disabled: controller.product.quantity! > 0,
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
                        ),),

                        ],



                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.all(0),
                      width: double.infinity,
                      color: Colors.black87,

                      height: 380,

                      child: Padding(
                        padding:
                        EdgeInsets.only(left: 10),
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,


                          children: [
                            Image.asset("assets/images/logo-head.png",height: 80,width: 80,),

                            Text("Dukan24h allows you to run your business 24/7, helps to reduceyour overhead cost, improves customer satisfaction, andgrows your business."
                              ,style:
                              TextStyle(
                                fontSize: 12,
                                color: Colors.white,


                              ),),
                            Text(
                              "Home",style:
                            TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,


                            ),),


                            Text("FAQ",style:
                            TextStyle(
                              fontSize: 13,
                              color: Colors.white,


                            ),),

                            Text("Contact",style:
                            TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),),

                            Text("Information",style:
                            TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,


                            ),),

                            Text(" info@dukan24h.com",style:
                            TextStyle(
                              fontSize: 15,
                              color: Colors.white,


                            ),),

                            Text("0237831231",style:
                            TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),),


                            Text(
                              "Follow us",style:
                            TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,


                            ),),

                            Row(

                              children: [
                                Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                ),
                                Icon(FontAwesomeIcons.twitter,color: Colors.white,),
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                ),
                                Icon(FontAwesomeIcons.instagram,color: Colors.white,),

                              ],
                            )





                          ],

                        ),
                      ),



                    ),
                  ],
                )





            ),
          ],



        ),
      ),
    );
  }

}
