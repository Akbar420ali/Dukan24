import 'package:login_signup/Part1/models/product_model.dart';

import 'constants.dart';

class DummyHelper {
  const DummyHelper._();

  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      image: Constants.product1,
      name: "Loreal Paris",
      quantity: 0,
      price: 259,
      rating: 4.5,
      reviews: '1.2k reviews',
      size: 'M',
      description: "L'Oreal Paris Age 40+ Skin Perfect cream is anti-aging Cream helps work on all those skin problems aging causes. Packed with Pro Retinol A it helps get rid of wrinkles and revitalizes your skin. It helps you get that flawless looking skin even post 40. Buy L'Oreal Paris Age 40+ Skin Perfect cream on Supermed.",

      isFavorite: false,
    ),
    ProductModel(
      id: 2,
      image: Constants.product2,
      name:  "Skin Perfect",
      quantity: 0,
      price: 79.99,
      rating: 4.4,
      reviews: '10k reviews',
        description: "SKIN PERFECT AGE 30 + FACIAL FOAMThis is SKIN PERFECT AGE 30 + FACIAL FOAM!!!",

        size: 'M',
      isFavorite: false
    ),
    ProductModel(
      id: 3,
      image: Constants.product3,
      name: "Loreal Whitening",
      quantity: 0,
      price: 129.99,
      rating: 4.3,
      reviews: '22k reviews',
        description: "L'Oreal Paris 20+ Face wash for Age 20+ Skin Perfect Range cleansing foam is combined with Perlite and Salicylic Acid which helps keep oiliness, pimples and blemishes at bay through your twenties while giving you that perfect clear skin glow. Buy L'Oreal Paris 20+ Face wash on Supermed",

        size: 'M',
      isFavorite: false
    ),
    ProductModel(
      id: 4,
      image: Constants.product4,
      name:  "Dettol",
      quantity: 0,
      price: 59.99,
      rating: 4.2,
      reviews: '3.4k reviews',
        description: "DETTOL SOFT ON SKIN HAND WASH 250ML",

        size: 'M',
      isFavorite: false
    ),
    ProductModel(
      id: 5,
      image: Constants.product5,
      name: "Netsle Cerelac",
      quantity: 0,
      price: 39.99,
      rating: 4.1,
      reviews: '2.6k reviews',
        description: "estlÃ© Cerelac is a range of nutritious, easily digested instant infant cereals which helps babies develop tastes for other foods. It contains an optimal level of vitamins and minerals required for the proper growth and development of your baby. Cerelac products contain Bifidus BL which is a probiotic similar to those found in the digestive systems of breastfed babies.Buy Cerelac Strw 175gm on Supermed.",

        size: 'M',
      isFavorite: false
    ),
    ProductModel(
      id: 6,
      image: Constants.product7,
      name:  "Lactogen Recover",
      quantity: 0,
      price: 59.99,
      rating: 4.0,
      reviews: '5.8k reviews',
      size: 'M',
      isFavorite: false
    ),
    ProductModel(
      id: 7,
      image: Constants.product8,
      name:  "Cerelac Chonsa",
      quantity: 0,
      price: 59.99,
      rating: 4.0,
      reviews: '5.8k reviews',
        description: "NestlÃ© Cerelac is a range of nutritious, easily digested instant infant cereals which helps babies develop tastes for other foods. It contains an optimal level of vitamins and minerals required for the proper growth and development of your baby. Cerelac products contain Bifidus BL which is a probiotic similar to those found in the digestive systems of breastfed babies.Buy Cerelac Chonsa 175gm on Supermed.",

        size: 'M',
      isFavorite: false
    ),
    ProductModel(
      id: 7,
      image: Constants.product9,
      name:  "Lactogen Recover",
      quantity: 0,
      price: 59.99,
      rating: 4.0,
      reviews: '5.8k reviews',
        description: "NestlÃ© Cerelac is a range of nutritious, easily digested instant infant cereals which helps babies develop tastes for other foods. It contains an optimal level of vitamins and minerals required for the proper growth and development of your baby. Cerelac products contain Bifidus BL which is a probiotic similar to those found in the digestive systems of breastfed babies.Buy Cerelac Chonsa 175gm on Supermed.",

        size: 'M',
      isFavorite: false
    ),
  ];

}