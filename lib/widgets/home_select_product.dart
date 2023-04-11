import 'package:crud_application/controller/mycontroller.dart';
import 'package:flutter/material.dart';

class Select_Product extends StatelessWidget {
  const Select_Product({
    super.key,
    required this.width,
    required this.controller,
    required this.height,
  });

  final double width;
  final MyController controller;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
      width: width * 1,
      child: Column(
        children: [
          ListView.builder(shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.select.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                shadowColor: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.25,
                      width: width * 1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("${controller.select.first.image}"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              );
            },),
        ],
      ),
    );
  }
}

