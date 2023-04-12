import 'package:crud_application/screens/add_product.dart';
import 'package:crud_application/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNevigation extends StatefulWidget {
  const BottomNevigation({
    super.key,
  });

  @override
  State<BottomNevigation> createState() => _BottomNevigationState();
}

class _BottomNevigationState extends State<BottomNevigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff111526),
        borderRadius: BorderRadius.all(Radius.circular(24),),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home_rounded,
            size: 24,
            color: Colors.white,
          ),
          Icon(
            Icons.search_rounded,
            size: 24,
            color: Colors.white,
          ),
          InkWell(
            onTap: (){
              Get.to(AddProduct());
            },
            child: Icon(
              Icons.qr_code_scanner_outlined,
              size: 24,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(ProfilePage());
            },
            child: Icon(
              Icons.person_outline_rounded,
              size: 24,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.login_outlined,
            size: 24,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}