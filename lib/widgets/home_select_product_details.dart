import 'package:crud_application/controller/mycontroller.dart';
import 'package:crud_application/model/products.dart';
import 'package:flutter/material.dart';

class Product_Details extends StatelessWidget {
  Product_Details({
    super.key,
    required this.height,
    required this.controller,
  });

  final double height;
  final MyController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 15),
                  child: Text("Product Details",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Name : ${controller.select.first.name}",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Price : ",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${controller.select.first.price}",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset("assets/images/taka.png",height: 10,color: Colors.white,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Text(
                  "Description : ${controller.select.first.details}",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                    Text("See all",style: TextStyle(fontSize: 14,color: Colors.blue),),

                  ],
                ),
              ),
              Container(
                height: 150,
                margin: EdgeInsets.only(bottom: 20),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: productlist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shadowColor: Colors.grey,

                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "${productlist[index].image}",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${productlist[index].name}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Price : ${productlist[index].price}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          Image.asset("assets/images/taka.png",height: 12,)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: 250,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10),
                                child: Text(
                                  "Description : ${productlist[index].details}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                  maxLines: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}