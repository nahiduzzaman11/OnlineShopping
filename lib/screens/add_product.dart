import 'dart:io';
import 'package:crud_application/controller/mycontroller.dart';
import 'package:crud_application/widgets/bottom_nev.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class AddProduct extends StatefulWidget {
  AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  MyController controller = Get.put(MyController());

  // This is the file that will be used to store the image
  File? image;
  // This is the image picker
  final picker = ImagePicker();
  // Implementing the image picker
  picChange() async {
    final XFile? pickedImage =
    await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Add Product",style: TextStyle(color: Colors.black,fontSize: 20),),
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 20,
            color: Colors.black,
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
          margin: EdgeInsets.symmetric(horizontal: width * 0.03,vertical: height * 0.02),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  picChange();
                },
                child: CircleAvatar(
                  radius: 50.0,
                  child: Container(
                    height: height * 0.5,width: width * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ClipOval(
                      child: image != null
                          ? Image.file(image!,height :height * 0.5, width: width * 0.5, fit: BoxFit.fill,)
                          : Icon(Icons.add_photo_alternate_outlined,color: Colors.black,size: 30,),
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.03,),
              SizedBox(
                width: width * 1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.production_quantity_limits_outlined,
                        color: Colors.purple,
                      ),
                      hintText: 'Product Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              SizedBox(
                width: width * 1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.description_outlined,
                        color: Colors.blue,
                      ),
                      hintText: 'Product Description',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              SizedBox(
                width: width * 1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.black,
                      ),
                      hintText: 'Barcode',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              SizedBox(
                width: width * 1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.green,
                      ),
                      hintText: 'Price',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              SizedBox(
                width: width * 1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.branding_watermark_outlined,
                        color: Colors.redAccent,
                      ),
                      hintText: 'Brand Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              SizedBox(
                width: width * 1,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.category_outlined,
                        color: Colors.deepPurpleAccent,
                      ),
                      hintText: 'Sub Category',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Color(0xff413f40),
                    backgroundColor: Colors.blueGrey[300],
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: 12,color: Colors.black,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNevigation(),
    ));
  }
}
