import 'dart:io';

import 'package:crud_application/controller/mycontroller.dart';
import 'package:crud_application/widgets/bottom_nev.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        title: const Text("Profile",style: TextStyle(color: Colors.black,fontSize: 20),),
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
      body: Container(
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
                child: ClipOval(
                  child: image != null
                      ? Image.file(image!,height :height * 0.5, width: width * 0.5, fit: BoxFit.fill,)
                      : Image.asset('assats/images/pro1.png',height: 100,width: 100,fit: BoxFit.fill,),
                ),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: height * 0.03,),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Administrator",style: TextStyle(color: Colors.black,fontSize: 14),),
                leading: Icon(Icons.person_outline,color: Colors.blueAccent,),
                trailing: Icon(Icons.edit_outlined,color: Colors.black,),
              ),
            ),
            SizedBox(height: height * 0.01,),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("admin@localhost.com",style: TextStyle(color: Colors.black,fontSize: 14),),
                leading: Icon(Icons.email_outlined,color: Colors.redAccent,),
                trailing: Icon(Icons.edit_outlined,color: Colors.black,),
              ),
            ),
            SizedBox(height: height * 0.01,),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("+8801795888218",style: TextStyle(color: Colors.black,fontSize: 14),),
                leading: Icon(Icons.phone_outlined,color: Colors.green[600],),
                trailing: Icon(Icons.edit_outlined,color: Colors.black,),
              ),
            ),
            SizedBox(height: height * 0.01,),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Address",style: TextStyle(color: Colors.black,fontSize: 14),),
                leading: Icon(Icons.location_on,color: Colors.redAccent,),
                trailing: Icon(Icons.edit_outlined,color: Colors.black,),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNevigation(),
    ));
  }
}
