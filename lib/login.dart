import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup/auth_controller.dart';
import 'package:signin_signup/signup.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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

          ),

          Container(
            margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                 "Hi there!",
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 40,
                 ),
               ),
                SizedBox(height: 5,),
                Text(
                  "Sign into your account",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20,
                  ),
                ),
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
                    controller: emailController,
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
                    controller: passwordController,
                    obscureText: true,
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
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 20,
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              width: w*0.5,
              height: h*0.1,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color: Colors.orange
              ),

              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: w*0.04),
          RichText(text: TextSpan(
            text: "Don\'t have an account?",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20
            ),
            children: [
              TextSpan(
              text: " Create",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUp())
              )
            ]
          )
          )
        ],
      ),
    );
  }
}
