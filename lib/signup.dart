import 'package:flutter/material.dart';
import 'package:signin_signup/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List images = [
      "g.png",
       "f.png",
      "t.png",
    ];

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

          Container(
            margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 8,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "E-mail ID",
                        prefixIcon: Icon(Icons.email),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 8,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),


              ],
            ),
          ),
          SizedBox(height: 30,),
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
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: w*0.04),
          RichText(text: TextSpan(
              text: "OR",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15
              ),

          )),
          Wrap(
            children: List<Widget>.generate(
              3,
                (index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "images/"+images[index]
                      ),
                    ),
                  ),
                );
                }
            ),
          )

        ],
      ),

    );
  }
}
