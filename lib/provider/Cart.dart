// ignore_for_file: file_names

import 'package:e_commerce_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  //here your write the data that you can reach it from any place (other classes)
  List selectedProducts = [];
  double price = 0;
  add(Item productOfItem) {
    selectedProducts.add(productOfItem);

    price += productOfItem.price.round();

    //dah 2ely by3ml refresh badal ma 23meloh manually
    //mmkn yo3tabar zay el setState fy stateful widget
    notifyListeners();
  }

  remove(Item productOfItem) {
    selectedProducts.remove(productOfItem);
    price -= productOfItem.price.round();
    notifyListeners();
  }
}
