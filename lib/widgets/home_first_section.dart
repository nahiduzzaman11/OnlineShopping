import 'package:flutter/material.dart';

class HomeFirstSection extends StatelessWidget {
  HomeFirstSection({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
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
                  image: AssetImage("assets/images/wall.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Online Shopping",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Personal Section",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
