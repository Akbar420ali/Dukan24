import 'package:flutter/material.dart';


class Product {


  final String image, title, description;
  final int  size, id;
  final  num price;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      });



  Product getById(int id) =>
      products.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  Product getByPosition(int pos) => products[pos];



}

List<Product> products = [
  Product(
      id: 1,
      title: "Loreal Paris",
      price: 234,
      size: 12,
      description: "L'Oreal Paris Age 40+ Skin Perfect cream is anti-aging Cream helps work on all those skin problems aging causes. Packed with Pro Retinol A it helps get rid of wrinkles and revitalizes your skin. It helps you get that flawless looking skin even post 40. Buy L'Oreal Paris Age 40+ Skin Perfect cream on Supermed.",
      image: "assets/sk1.png",
      ),
  Product(
      id: 2,
      title: "Skin Perfect",
      price: 294,
      size: 8,
      description: "SKIN PERFECT AGE 30 + FACIAL FOAMThis is SKIN PERFECT AGE 30 + FACIAL FOAM!!!",
    image: "assets/sk2.png",
      ),
  Product(
      id: 3,
      title: "Loreal Whitening",
      price: 244,
      size: 10,
      description: "L'Oreal Paris 20+ Face wash for Age 20+ Skin Perfect Range cleansing foam is combined with Perlite and Salicylic Acid which helps keep oiliness, pimples and blemishes at bay through your twenties while giving you that perfect clear skin glow. Buy L'Oreal Paris 20+ Face wash on Supermed",
    image: "assets/sk3.png",      ),
  Product(
      id: 4,
      title: "Dettol",
      price: 334,
      size: 11,
      description: "DETTOL SOFT ON SKIN HAND WASH 250ML",
    image: "assets/sk4.png",     ),
  Product(
      id: 5,
      title: "Netsle Cerelac",
      price: 400,
      size: 12,
      description: "estlÃ© Cerelac is a range of nutritious, easily digested instant infant cereals which helps babies develop tastes for other foods. It contains an optimal level of vitamins and minerals required for the proper growth and development of your baby. Cerelac products contain Bifidus BL which is a probiotic similar to those found in the digestive systems of breastfed babies.Buy Cerelac Strw 175gm on Supermed.",
      image: "assets/l1.png"),

  Product(
    id: 6,
    title: "Lactogen Recover",
    price: 540,
    size: 12,
    description: "Important notice: Breast milk is best for babies and breastfeeding should continue as long as possible. Low Lactose Infant Formula â€“ For the dietary management of infants with acute diarhhoea (Suitable from birth). Buy Lactogen Recover 200gm on Supermed.",
    image: "assets/l2.png",

  ),
  Product(
    id: 7,
    title: "Cerelac Chonsa",
    price: 500,
    size: 12,
    description: "NestlÃ© Cerelac is a range of nutritious, easily digested instant infant cereals which helps babies develop tastes for other foods. It contains an optimal level of vitamins and minerals required for the proper growth and development of your baby. Cerelac products contain Bifidus BL which is a probiotic similar to those found in the digestive systems of breastfed babies.Buy Cerelac Chonsa 175gm on Supermed.",
    image: "assets/l3.png",

  ),
  Product(
    id: 8,
    title: "Lactogen Recover",
    price: 540,
    size: 12,
    description: "Important notice: Breast milk is best for babies and breastfeeding should continue as long as possible. Lactogen 1 is a spray dried infant formula for infants upto six months when they are not breastfed. Buy Lactogen 1 800gm on Supermed.",
    image: "assets/l1.png",

  ),
];

