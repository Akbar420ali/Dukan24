import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../components/product_item.dart';
import '../../../components/screen_title.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        title: Image.asset( "assets/images/logo-head.png",height: 55,
          fit: BoxFit.cover,),

        actions: [
          Padding(padding: EdgeInsets.all(12) ,
            child: IconButton(
              icon: Icon(FontAwesomeIcons.shoppingCart,color: Colors.grey,),

              onPressed: (){
                Navigator.pushNamed(context,'cart');

              },
            ),
          )
        ],

        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

      ),

      body: SingleChildScrollView(
       child: Column(
         children: [
           slider(),
           SizedBox(
             height: 30,
           ),

           Container(

             margin: EdgeInsets.all(10),
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(4),
               boxShadow: [
                 BoxShadow(
                   color: Colors.black54,
                   blurRadius: 2,
                   offset: Offset(2, 4), // Shadow position
                 ),
               ],
             ),
             child: Wrap(
               direction: Axis.vertical,


               children: [





                 Icon(Icons.add_card,),

                 SizedBox(width: 30,),

                 Text(

                   "Free Membership for shops",
                   style:TextStyle(
                       fontWeight: FontWeight.bold,color: Colors.black54) ,),

                 SizedBox(width: 100,),

                 Icon(Icons.account_balance_wallet_rounded),
                 SizedBox(width: 30,),

                 Text("POS Facility for shops",style:TextStyle(
                     fontWeight: FontWeight.bold,color: Colors.black54) ,),
                 SizedBox(width: 130,),

                 Icon(Icons.add_card),

                 SizedBox(width: 30,),

                 Text("Connectivity in just one click",style:TextStyle(
                     fontWeight: FontWeight.bold,color: Colors.black54) ,),
                 SizedBox(width: 80,),

                 Icon(FontAwesomeIcons.dollarSign),
                 SizedBox(width: 30,),

                 Text("24th/7 Support ",style:TextStyle(
                     fontWeight: FontWeight.bold,color: Colors.black54) ,),



               ],

             ),
           ),
           SizedBox(
             height: 30,
           ),

           /////view all shops//////////////
           Text("VIEW ALL SHOPS",textAlign: TextAlign.center,style:
           TextStyle(
             fontWeight: FontWeight.bold,
           ),),
           SizedBox(
             height: 30,
           ),

           Text("Dukan 24h Shop",
             textAlign: TextAlign.center,
             style:TextStyle(color: Colors.deepOrangeAccent,
               fontSize: 45,
             ),),


           Wrap(
             children: [


               Container(
                 margin: EdgeInsets.all(17),
                 width: 320,
                 height: 250,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black54,
                       blurRadius: 2,
                       offset: Offset(2, 4), // Shadow position
                     ),
                   ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [

                     Image.asset(

                       "assets/images/img12.png",width: 200,
                       height: 140,
                       fit: BoxFit.cover,
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 58),
                       width: 320,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(4),
                         boxShadow: [

                         ],

                       ),
                       child: Column(
                         children: [
                           Text("gadgeguy.pk",style:
                           TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                             color: Colors.white,

                           ),),
                           Text("Demo Pharmacy",style:
                           TextStyle(
                             fontSize: 7,


                           ),)
                         ],
                       ),

                     ),


                   ],
                 ),



               ),
               Container(
                 margin: EdgeInsets.all(20),
                 width: 320,
                 height: 250,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black54,
                       blurRadius: 2,
                       offset: Offset(2, 4), // Shadow position
                     ),
                   ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,

                   children: [



                     Image.asset(


                       "assets/images/img13.png",width: 290,
                       height: 150,
                       fit: BoxFit.cover,
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 50),
                       width: 320,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(4),
                         boxShadow: [

                         ],
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("KMH electric store",style:
                           TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                             color: Colors.white,

                           ),),
                           Text("Demo Pharmacy",style:
                           TextStyle(
                             fontSize: 7,


                           ),)
                         ],
                       ),

                     ),


                   ],
                 ),



               ),
               Container(
                 margin: EdgeInsets.all(20),
                 width: 320,
                 height: 250,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black54,
                       blurRadius: 2,
                       offset: Offset(2, 4), // Shadow position
                     ),
                   ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,

                   children: [



                     Image.asset(


                       "assets/images/11.png",width: 290,
                       height: 150,
                       fit: BoxFit.cover,
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 50),
                       width: 320,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(4),
                         boxShadow: [

                         ],
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("Demo Pharmacy",style:
                           TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                             color: Colors.white,

                           ),),
                           Text("Demo Pharmacy",style:
                           TextStyle(
                             fontSize: 7,


                           ),)
                         ],
                       ),

                     ),


                   ],
                 ),



               ),








             ],
           ),

           Container(
             margin: EdgeInsets.all(10),
             width: double.infinity,
             height: 80,
             decoration: BoxDecoration(
               color: Colors.black87,
               borderRadius: BorderRadius.circular(4),

             ),
             child: Column(



               children: [


                 Text(textAlign: TextAlign.right,"Subscribe Our Newsletter!",
                   style:
                   TextStyle(



                     fontWeight: FontWeight.bold,
                     fontSize: 18,
                     color: Colors.white,

                   ),),
                 Text("Subscribe to our newsletter for featured",style:
                 TextStyle(
                   fontSize: 10,color: Colors.white,



                 ),), Text("promotions and new products!",style:
                 TextStyle(
                   fontSize: 10,
                   color: Colors.white,


                 ),)





               ],
             ),



           ),

           Text("latest ",textAlign: TextAlign.center,style:
           TextStyle(
             fontWeight: FontWeight.bold,
           ),),

           SizedBox(
             height: 30,
           ),

           Text("Products",
             textAlign: TextAlign.center,
             style:TextStyle(color: Colors.deepOrangeAccent,
               fontSize: 45,
             ),),


           Container(
             margin: EdgeInsets.all(18),

             width: double.infinity,

             height: 1100,
             child: Column(

               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 20.verticalSpace,
                 GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: 10.w,
                     mainAxisSpacing: 15.h,
                     mainAxisExtent: 250.h,
                   ),
                   shrinkWrap: true,
                   primary: false,
                   itemCount: controller.products.length,
                   itemBuilder: (context, index) => ProductItem(
                     product: controller.products[index],
                   ),
                 ),
                 10.verticalSpace,

               ],
             ),
           ),
           SizedBox(
             height: 30,
           ),
           Text("Feature ",textAlign: TextAlign.center,style:
           TextStyle(
             fontWeight: FontWeight.bold,
           ),),
           SizedBox(
             height: 30,
           ),
           Text("Products",
             textAlign: TextAlign.center,
             style:TextStyle(color: Colors.deepOrangeAccent,
               fontSize: 45,
             ),),



           /////feature products////////
           Wrap(
             children: [


               Container(
                 margin: EdgeInsets.all(10),
                 width:150,
                 height:200,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   border: Border.all(color: Colors.grey),
                   // boxShadow: [
                   //   BoxShadow(
                   //     color: Colors.black54,
                   //     blurRadius: 4,
                   //     offset: Offset(4, 4,), // Shadow position
                   //   ),
                   // ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [

                     Image.asset(

                       "assets/images/10.png",width: 120,
                       height: 100,


                     ),
                     Text("Every Day",style:
                     TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,

                     ),),
                     Text("Demo Pharmacy",style:
                     TextStyle(
                       fontSize: 14,


                     ),)
                   ],
                 ),


               ),
               Container(
                 margin: EdgeInsets.all(10),
                 width: 150,
                 height:200,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   border: Border.all(color: Colors.grey),

                   // boxShadow: [
                   //   BoxShadow(
                   //     color: Colors.black54,
                   //     blurRadius: 2,
                   //     offset: Offset(2, 4), // Shadow position
                   //   ),
                   // ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [

                     Image.asset(

                       "assets/images/in1.png",width: 130,
                       height: 110,


                     ),
                     Text("Milk choclate",style:
                     TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,

                     ),),
                     Text("Demo Pharmacy",style:
                     TextStyle(
                       fontSize: 12,


                     ),)
                   ],
                 ),


               ),
               Container(
                 margin: EdgeInsets.all(10),
                 width: 150,
                 height:200,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   border: Border.all(color: Colors.grey),

                   // boxShadow: [
                   //   BoxShadow(
                   //     color: Colors.black54,
                   //     blurRadius: 4,
                   //     offset: Offset(4, 4,), // Shadow position
                   //   ),
                   // ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [

                     Image.asset(

                       "assets/images/2.png",width: 120,
                       height: 80,


                     ),
                     Text("Tumeric Powder",textAlign: TextAlign.center,style:
                     TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,


                     ),),
                     Text("1KG",style:
                     TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,


                     ),),

                     Text("Demo Pharmacy",style:
                     TextStyle(
                       fontSize: 14,


                     ),)

                   ],
                 ),


               ),
               Container(
                 margin: EdgeInsets.all(10),
                 width: 150,
                 height:200,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4),
                   border: Border.all(color: Colors.grey),

                   // boxShadow: [
                   //   BoxShadow(
                   //     color: Colors.black54,
                   //     blurRadius: 4,
                   //     offset: Offset(4, 4,), // Shadow position
                   //   ),
                   // ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                   children: [

                     Image.asset(

                       "assets/images/9.png",width: 120,
                       height: 100,


                     ),
                     Text("Muscle Milk",style:
                     TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,

                     ),),
                     Text("Choclate",style:
                     TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,


                     ),),
                     Text("Demo Pharmacy",style:
                     TextStyle(
                       fontSize: 14,


                     ),)
                   ],
                 ),


               ),












             ],
           ),


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
       ),

      ),
      drawer: Drawer(),

    );
  }
}
class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  List imageList=[
    {"id":1,"image_path": "assets/images/img1.png"},
    {"id":2,"image_path": "assets/images/img2.png"},
    {"id":3,"image_path": "assets/images/img3.png"},
    {"id":4,"image_path": "assets/images/img5.png"},
    {"id":5,"image_path": "assets/images/img6.png"},
    {"id":6,"image_path": "assets/images/img7.png"},
  ];
  final CarouselController carouselController =CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: imageList
                  .map(
                    (item) => Image.asset(
                  item['image_path'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),

          ],

        ),
      ],
    );

  }
}

