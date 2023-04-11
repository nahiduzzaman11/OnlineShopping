import 'package:crud_application/model/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var i = 0;

  List<Products> select= [];

  selectedProduct(Products p){
    select.add(p);
    update();
  }
  removeSelectedProduct(int index){
    select.removeAt(index);
    update();
  }

}