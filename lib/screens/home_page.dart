import 'package:crud_application/widgets/bottom_nev.dart';
import 'package:crud_application/widgets/home_all_product.dart';
import 'package:crud_application/widgets/home_first_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text("Dashboard",style: TextStyle(color: Colors.black,fontSize: 20),),
          leading: InkWell(
            onTap: (){
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.menu_outlined,
                size: 24,
                color: Colors.black,
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
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Column(
              children: [
                HomeFirstSection(),
                All_Product_Card()
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNevigation(),
      )
    );
  }
}
