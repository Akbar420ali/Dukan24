import 'package:login_signup/Part1/Page/prod.dart';
import 'package:login_signup/Part1/models/Product.dart';
class CartModel{
  late Product _product;

  final List<int> _itemIds = [];
  Product get  products => _product;

  set products (Product newProduct)
  {
    assert (newProduct != null);
    _product = newProduct;
  }
  List<Product> get items => _itemIds.map((id) => _product.getById(id)).toList();

  num get  totalPrice => items.fold(0, (total, current) => total+ current.price);

  void add(Product product){
    _itemIds.add(product.id);
  }

  void remove(Product product){
    _itemIds.remove(product.id);
  }

}

