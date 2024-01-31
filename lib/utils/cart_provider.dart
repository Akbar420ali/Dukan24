import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class cartProvider with ChangeNotifier {

int _counter =0;
int get counter => _counter;


void _setprefItem()async{
  SharedPreferences prefs = SharedPreferences.getInstance() as SharedPreferences;
prefs.setInt("cartItems", _counter);
notifyListeners();


}
void _getprefItem()async{
  SharedPreferences prefs = SharedPreferences.getInstance() as SharedPreferences;
  _counter = prefs.getInt("cartItems")??0;
  notifyListeners();


}
void addcounter(){
  _counter++;
  _setprefItem();
  notifyListeners();
}
void removecounter(){
  _counter--;
  _setprefItem();
  notifyListeners();
}

int getCounter()
{_getprefItem();

  return _counter;
}


}