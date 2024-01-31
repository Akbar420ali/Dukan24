import 'package:flutter/material.dart';
import 'package:login_signup/Part1/Page/prod.dart';
import 'package:login_signup/Part1/details/components/add_to_cart.dart';
import 'package:login_signup/Part1/models/Product.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup/Part1/models/shop_item.dart';
import 'package:login_signup/Part1/models/Product.dart';
import 'package:velocity_x/velocity_x.dart';
import 'components/color_and_size.dart';
import 'components/description.dart';
import 'components/product_title_with_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
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
                          tag: "${product.id}",
                          child: Image.asset(
                            height: 170,
                            width: 170,
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 30,height: 30,),
                    Text(
                      product.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Description(product: product),
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
                                  text: "\Rs:${product.price}",
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
                          AddToCart(product:product)

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
                )





            ),
          ],



        ),
      ),
    );
  }
}
class AddToCart extends StatefulWidget {
final Product product;
const AddToCart({
  Key? key, required this.product,

}) : super(key: key);


  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAdded  = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          isAdded = isAdded.toggle();
          // final _catalog = Product(id: 1,image: "1.png",description: "abc",price: 30,size: 1,title: "abc");
          final _cart = CartModel();
          // _cart.add(_catalog);
          setState(() {

          });


        },
      style: ButtonStyle(


        backgroundColor: MaterialStateProperty.all(
            Colors.deepOrange),

      ),
        child:isAdded ? Icon(Icons.done,color: Colors.white,):Text("Add to cart",style: TextStyle(color: Colors.white),) ,
    );
  }
}
