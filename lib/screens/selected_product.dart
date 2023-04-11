import 'package:crud_application/controller/mycontroller.dart';
import 'package:crud_application/screens/home_page.dart';
import 'package:crud_application/widgets/bottom_nev.dart';
import 'package:crud_application/widgets/home_select_product.dart';
import 'package:crud_application/widgets/home_select_product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectedProduct extends StatelessWidget {
   SelectedProduct({Key? key}) : super(key: key);

  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text("Product Details",style: TextStyle(color: Colors.black,fontSize: 20),),
          leading: InkWell(
            onTap: (){
            },
            child: Container(

              child: InkWell(
                onTap: (){
                  controller.removeSelectedProduct(0);
                  Get.offAll(HomePage());
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Select_Product(width: width, controller: controller, height: height),
                Product_Details(height: height, controller: controller),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNevigation(),
      ),
    );
  }
}


