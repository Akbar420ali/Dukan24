import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:login_signup/app/modules/cart/controllers/cart_controller.dart';
import 'package:login_signup/app/modules/cart/views/widgets/cart_item.dart';

import '../../components/custom_button.dart';

class checkout extends GetView<CartController> {
  const checkout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Center(
          child: Text("checkout",style: TextStyle(
            color: Colors.black,
          ),),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 0) ,
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(

        child: Column(

          children: [


            Container(
              margin: EdgeInsets.only( left: 4,right: 4,top: 1,bottom: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),

              width: double.infinity,
              height: 100,
              child: (
                  Column(mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      TextButton(onPressed: (){}, child: Text("+ Add New Adress",style: TextStyle(
                          color: Colors.blue
                      ),)),



                    ],
                  )
              ),

            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only( left: 3,right: 3,top: 1,bottom: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),

                width: double.infinity,
                height: 550,
                child: (
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        TextButton(onPressed: (){}, child: Text("Product By Dukan 24",style: TextStyle(
                            color: Colors.black
                        ),)),

                        ListView.builder(
                          physics: BouncingScrollPhysics(),
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



                      ],
                    )
                ),

              ),
            ),
            Container(
              width: double.infinity,
             height: 200,
              margin: EdgeInsets.all( 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
             child: Column(
               children: [
                 Container(
                   margin: EdgeInsets.all(10),
                   width: double.infinity,
                   height: 1,
                   color: Colors.grey,
                 ),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(


                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         width: 200,
                         height: 70,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(4),
                           border: Border.all(color: Colors.lightBlue),

                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Fatest Delivery|RS:138",style: TextStyle(
                               color: Colors.lightBlue,
                               fontWeight: FontWeight.bold,

                             ),),
                             Text("Recive by Tommorow",style: TextStyle(



                             ),)
                           ],
                         ),

                       ),
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         width: 200,
                         height: 70,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(4),
                           border: Border.all(color: Colors.black),

                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Standard Delivery|RS:138",style: TextStyle(

                               fontWeight: FontWeight.bold,

                             ),),
                             Text("Recive by Tommorow",style: TextStyle(



                             ),)
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(10),
                   width: double.infinity,
                   height: 1,
                   color: Colors.grey,
                 ),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(


                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 5),
                         width: 100,
                         height: 20,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Store voucher",style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,

                             ),),

                           ],
                         ),

                       ),
                       Container(
                         margin: EdgeInsets.only(left: 5),
                         width: 230,
                         height: 20,

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Text("Get voucher",style: TextStyle(
                               color: Colors.grey,

                             ),),

                           ],
                         ),

                       ),

                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.all(10),
                   width: double.infinity,
                   height: 1,
                   color: Colors.grey,
                 ),



               ],
             ),
            ),

            Container(
              margin: EdgeInsets.all( 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),

              width: double.infinity,
              height: 190,
              child: (
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      TextButton(onPressed: (){}, child: Text("Daraz Promotions",style: TextStyle(
                          color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)),
                      Row(

                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.vignette_outlined,color: Colors.deepOrange,),

                          SizedBox(width: 20,),
                          Text("Daraz Voucher"),
                          SizedBox(width: 20,),
                          Text("No Applicable Voucher",style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Row(

                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.currency_bitcoin,color: Colors.deepOrange,),

                          SizedBox(width: 20,),
                          Text("Daraz Conins"),
                          SizedBox(width: 20,),
                          Text("Not Aviable",style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Row(

                        children: [
                          SizedBox(width: 10,),
                          Icon(FontAwesomeIcons.paypal,color: Colors.deepOrange,),

                          SizedBox(width: 20,),
                          Text("Promo Code"),
                          SizedBox(width: 20,),
                          Text("Enter store/ Daraz Code",style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),







                    ],
                  )
              ),

            ),
            Container(
              margin: EdgeInsets.all( 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),

              width: double.infinity,
              height: 190,
              child: (
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      TextButton(onPressed: (){}, child: Text("Order Summary",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)),
                      Row(

                        children: [


                          SizedBox(width: 20,),
                          Text("Items Total"),
                          SizedBox(width: 20,),
                          Text('\Rs:${controller.total.toStringAsFixed(2)}',textAlign: TextAlign.end,style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Row(

                        children: [
                          SizedBox(width: 10,),

                          Text("Delivery Charges"),
                          SizedBox(width: 20,),
                          Text('\Rs:${controller.delivery.toStringAsFixed(2)}',style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Row(

                        children: [
                          SizedBox(width: 10,),

                          Text("Delivery Discount"),
                          SizedBox(width: 20,),
                          Text("0",style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Row(

                        children: [
                          SizedBox(width: 10,),

                          Text("Total Payment"),
                          SizedBox(width: 20,),
                          Text('\Rs:${controller.delivery+controller.total}',style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),







                    ],
                  )
              ),

            ),
            Container(
              margin: EdgeInsets.all( 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),

              width: double.infinity,
              height: 80,
              child: (
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      TextButton(onPressed: (){}, child: Text("Total",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)),
                      TextButton(onPressed: (){}, child: Text('\Rs:${controller.delivery+controller.total}',style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),)),
                     ElevatedButton(style: ButtonStyle(

                     ),onPressed: (){}, child:Text("place order",style: TextStyle(
                       color: Colors.white,
                     ),))

                    ],
                  )
              ),

            ),






          ],







        ),



      ),

    );
  }
}
