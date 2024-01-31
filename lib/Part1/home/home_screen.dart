import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup/Part1/util/constants.dart';
import '../../Part1/models/Product.dart';
import '../details/details_screen.dart';
import 'components/categorries.dart';
import 'components/item_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Image.asset( "assets/header.png",height: 55,
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

      body:

           Column(

           crossAxisAlignment: CrossAxisAlignment.start,


           children: <Widget>[


             SingleChildScrollView(

               child: Row(


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
             ),


             Expanded(

               child: Padding(

                 padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),



                 child: GridView.builder(
                   itemCount: products.length,

                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing: kDefaultPaddin,
                     crossAxisSpacing: kDefaultPaddin,
                     childAspectRatio: 0.75,
                   ),
                   itemBuilder: (context, index) => ItemCard(
                     product: products[index],
                     press: () => Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => DetailsScreen(
                           product: products[index],
                         ),
                       ),
                     ),
                   ),
                 ),

               ),

             ),

           ],



             ),

      drawer: Drawer(),


    );
  }
}
