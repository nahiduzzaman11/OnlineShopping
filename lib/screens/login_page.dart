import 'package:crud_application/controller/mycontroller.dart';
import 'package:crud_application/screens/home_page.dart';
import 'package:crud_application/widgets/home_first_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInPage extends StatelessWidget {
   LogInPage({Key? key}) : super(key: key);

   MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
               vertical: height * 0.05),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              HomeFirstSection(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.1,
                    ),
                    SizedBox(
                      width: width * 1,
                      child: Card(
                          elevation: 5,
                          color: Colors.grey[600],
                          child: TextField(

                            controller: myController.emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              ),
                              hintText: 'E-Mail',
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      width: width * 1,
                      child: Card(
                        elevation: 5,
                        color: Colors.grey[600],
                        child: TextField(

                          obscureText: true,
                          controller: myController.passController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: Colors.white,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        foregroundColor: Color(0xff413f40),
                        backgroundColor: Colors.grey[600],
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 14,color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01,),
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        "Registration Now?",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
