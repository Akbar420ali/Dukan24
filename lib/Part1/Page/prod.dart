import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup/utils/constants.dart';
import 'package:login_signup/Part1/details/details_screen.dart';



class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Image.asset( "assets/header.png",height: 55,
          fit: BoxFit.cover,),
        actions: [
          Padding(padding: EdgeInsets.all(12) ,
            child:Icon(FontAwesomeIcons.cartShopping,color: Colors.grey,),
    )



        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [



            Row(


              children: [

               TextButton(onPressed:(){
                Navigator.pushNamed(context, '');
              }, child: Text("Products",textAlign: TextAlign.left, style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,color: Colors.orange,
              ),)),

                TextButton(onPressed:(){
                  Navigator.pushNamed(context,'home');
                }, child: Text("home", style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),)),

              ],
            ),

            ////products//////
            // Wrap(
            //   crossAxisAlignment: WrapCrossAlignment.center,
            //   alignment: WrapAlignment.center,
            //   children: [
            //
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/10.png",width: 120,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Every Day",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("5KG",style:
            //           TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold,
            //
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width:200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/10.png",width: 120,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Every Day",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/image1.png",width: 120,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Baby Lotion",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/img9.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("colgate paste",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/2.png",width: 120,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Tumeric Powder",textAlign: TextAlign.center,style:
            //           TextStyle(
            //
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/in1.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("Milk choclate",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //   ],
            //
            // ),
            // Wrap(
            //   crossAxisAlignment: WrapCrossAlignment.center,
            //   alignment: WrapAlignment.center,
            //   children: [
            //
            //
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/c2.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("Dairy Milk ",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/c1.png",width: 150,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Dairy Milk ",textAlign: TextAlign.center,style:
            //           TextStyle(
            //
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //
            //           ),),
            //           Text("100gm",style:
            //           TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold,
            //
            //
            //           ),),
            //
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/c3.png",width: 180,
            //             height: 120,
            //
            //
            //           ),
            //           Text("Dairy Milk",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Choclate",style:
            //           TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold,
            //
            //
            //           ),),
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/c3.png",width: 180,
            //             height: 120,
            //
            //
            //           ),
            //           Text("Dairy Milk",textAlign: TextAlign.center,style:
            //           TextStyle(
            //
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //
            //           ),),
            //           Text("Bubbly",style:
            //           TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold,
            //
            //
            //           ),),
            //
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/c1.png",width: 120,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Dairy Milk",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Choclate",style:
            //           TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold,
            //
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 4,
            //             offset: Offset(4, 4,), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/c1.png",width: 120,
            //             height: 100,
            //
            //
            //           ),
            //           Text("Muscle Milk",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Choclate",style:
            //           TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold,
            //
            //
            //           ),),
            //           Text("Demo Pharmacy",style:
            //           TextStyle(
            //             fontSize: 14,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //   ],
            //
            // ),
            // Wrap(
            //   crossAxisAlignment: WrapCrossAlignment.center,
            //   alignment: WrapAlignment.center,
            //   children: [
            //
            //
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/l1.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("Cerlac chonsa ",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/l2.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("Nestle lactose ",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("lactogen",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/l3.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("Cerelac wheat ",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       width: 200,
            //       height:250,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(4),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black54,
            //             blurRadius: 2,
            //             offset: Offset(2, 4), // Shadow position
            //           ),
            //         ],
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //         children: [
            //
            //           Image.asset(
            //
            //             "assets/l4.png",width: 130,
            //             height: 110,
            //
            //
            //           ),
            //           Text("nestle lactogen ",style:
            //           TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //
            //           ),),
            //           Text("Food",style:
            //           TextStyle(
            //             fontSize: 12,
            //
            //
            //           ),)
            //         ],
            //       ),
            //
            //
            //     ),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //   ],
            //
            // ),







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
                    Image.asset("assets/logo-head.png",height: 80,width: 80,),

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

    );
  }
}
