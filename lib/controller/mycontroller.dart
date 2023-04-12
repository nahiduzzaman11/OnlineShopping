import 'package:crud_application/model/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';


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

  //Profile Page................

  //Hive DataBase..........
  late Box box1;
  bool isChecked = false;
  void createBox()async{
    box1 = await Hive.openBox('logindata');
    //getdata();
  }
  //Save LogIn Data in Hive DataBase
  void login(){
    if(isChecked){
      box1.put('email', emailController.value.text);
      box1.put('pass', passController.value.text);
    }
  }

  //Get Data
  void getdata()async{
    if(box1.get('email')!=null){
      emailController.text = box1.get('email');
      isChecked = true;
      update();
    }
    if(box1.get('pass')!=null){
      passController.text = box1.get('pass');
      isChecked = true;
      update();
    }
  }

}