import 'package:flutter/material.dart';

import 'package:robot/features/homepage/signup_login_screens/login_page.dart';
import 'package:robot/features/homepage/signup_login_screens/signup_page.dart';


class LostPassword extends StatefulWidget {
  const LostPassword({Key? key}) : super(key: key);

  @override
  State<LostPassword> createState() => _LostPasswordState();
}

class _LostPasswordState extends State<LostPassword> {
  bool checkboxValue= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040C2F),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 8,
            //       width: 8,
            //       decoration: BoxDecoration(
            //         color: Colors.green,
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     Text('UptimeRobot',
            //     style: TextStyle(
            //     color: Colors.white,
            //     fontWeight: FontWeight.w600,
            //     fontSize: 20,
            //     ),
            //     ),
            //   ],
            // ),
            SizedBox(
                height: 20
            ),
            Image.asset('images/novasarc_logo.png', height: 48, width: 150,),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text('Password reset.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child:
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF9DBED7),
                      ),
                      margin: EdgeInsets.only(top: 25,right: 30, left: 30,),
                      width: 400,
                      height: 40,
                      child: Center(
                        child: Text('We will send password reset link to your e-mail',
                          style: TextStyle(
                            color: Color(0xFF0960A6),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                      child: Text('Enter your account e-mail',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                      child: TextField(
                        // obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'e.g. info@example.com',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 400,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                              ),
                              child: Center(child: Text('Send password reset link',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.white))))
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only( top: 20, right: 35, left:35,  bottom: 30),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              },
                              child: Text('Back to Log In',
                                style: TextStyle(fontSize: 13, color: Colors.green, decoration: TextDecoration.underline),),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  child: Text('Join now, create your FREE account',
                    style: TextStyle(fontSize: 16, color: Colors.green, decoration: TextDecoration.underline),),
                )),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 25, bottom: 30),
              child: Text('NOVASarc @ 2023. All Rights Reserved',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),);
  }
}
