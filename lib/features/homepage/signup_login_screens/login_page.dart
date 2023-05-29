import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:form_validator/form_validator.dart';
import 'package:robot/features/homepage/homeScreen.dart';
import 'package:robot/features/homepage/signup_login_screens/config/config.dart';
import 'package:robot/features/homepage/signup_login_screens/lostPassword.dart';
import 'package:robot/features/homepage/signup_login_screens/signup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControllerName = TextEditingController();
  TextEditingController passwordControllerName = TextEditingController();

  bool isContainerVisible = false;

  GlobalKey<FormState>formkeylogin = GlobalKey<FormState>();

  Future login() async {
    if (formkeylogin.currentState!.validate()){
          try{
            final url = Uri.parse(Config.LOGIN_ACTION);
            final body = jsonEncode({

              "email" : emailControllerName.text,
              "password" : passwordControllerName.text
            });
            final response = await http.post(url, body: body);

            if (response.statusCode == 200 ){
              if (jsonDecode(response.body)['code'] == 1) {
                setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                });
                // print('Login successfully');
                // print('Response body: ${response.body}');

              } else {
                setState(() {
                  isContainerVisible = true;
                });
                // print('wrong password.');
                // print('Response body: ${response.body}');
              }

            }else {
              print('Error: ${response.statusCode}');
              print('Response body: ${response.body}');
            }

          }catch(e){
            print(e.toString());
          }


    }else{
      return formkeylogin; //you can't register without filling all fields
    }
  }

  bool checkboxValue= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040C2F),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            SizedBox(
                height: 20
            ),
            Image.asset('images/novasarc_logo.png', height: 48, width: 150,),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text('Welcome Back!',
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
                child: Form(
                  key: formkeylogin,
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isContainerVisible)
                      Container(
                      height :60,
                      width: 420,
                      color: Color(0xfff7b3c2),
                      margin: EdgeInsets.only(right: 30, left: 30, top: 30),
                      child: Center(
                        child: Text('Wrong e-mail and / or password. Please try again',
                          //
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                      Container(
                        margin: EdgeInsets.only(right: 30, left: 30, top: 30),
                        child: Text('Enter your e-mail',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                        child: TextFormField(
                          controller: emailControllerName,
                          // obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'e.g. info@example.com',
                            // errorText: 'E-mail is required',
                          ),
                          validator: ValidationBuilder(requiredMessage: 'E-mail is required').maxLength(50).required().email().build(),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                        child: Text('Enter your password',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 13,
                            color: Colors.black,

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                        child: TextFormField(
                          controller: passwordControllerName,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '******',

                          ),
                          validator: ValidationBuilder(requiredMessage: 'Password is required').required().minLength(8).build(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: InkWell(
                            onTap: (){
                              login();
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 15),
                                width: 400,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.green,
                                ),
                                child: Center(child: Text('Log in',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.white))))
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 26),
                          Checkbox(
                            value: checkboxValue,
                            onChanged: (onChange){
                              setState(() {
                                checkboxValue= onChange!;
                              });
                            },
                          ),
                          Expanded(child: Text('Remember me', style: TextStyle(fontSize: 13),)),
                          Container(
                              margin: EdgeInsets.only( top: 20, right: 35, left:35,  bottom: 30),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LostPassword()));
                                },
                                child: Text('Lost Password?',
                                  style: TextStyle(fontSize: 13, color: Colors.green, decoration: TextDecoration.underline),),
                              )),
                        ],
                      ),
                    ],
                  ),
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
              margin: EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 30),
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
