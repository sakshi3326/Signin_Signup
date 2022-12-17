import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "images/loginimg.jpeg"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.16,),
                CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  radius: 45,
                  backgroundImage: AssetImage(
                      "images/loginimg.jpeg"
                  ),
                )
              ],
            ),

          ),
          SizedBox(height: 30,),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),
          ),
          Container(
            width: w*0.5,
            height: h*0.1,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange
            ),

            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
