import 'package:crud_application/controller/mycontroller.dart';
import 'package:crud_application/model/products.dart';
import 'package:crud_application/screens/selected_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class All_Product_Card extends StatefulWidget {

  @override
  State<All_Product_Card> createState() => _All_Product_CardState();
}

class _All_Product_CardState extends State<All_Product_Card> {

  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: productlist.length,
        itemBuilder: (context, index) => InkWell(
          onTap: (){
            controller.selectedProduct(productlist[index]);
            Get.to(SelectedProduct());
            setState(() {

            });
          },
          child: Card(
            shadowColor: Colors.grey[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),),),
            elevation: 10,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                          image: DecorationImage(image: AssetImage("${productlist[index].image}"),fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "${productlist[index].name}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "${productlist[index].details}",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Price: ${productlist[index].price}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                                fontWeight: FontWeight.w300),
                          ),
                          ImageIcon(
                            AssetImage(
                              "assets/images/taka.png",
                            ),
                            size: 12,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
