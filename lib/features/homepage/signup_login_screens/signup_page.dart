import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:form_validator/form_validator.dart';
import 'package:robot/features/homepage/signup_login_screens/config/config.dart';
import 'package:robot/features/homepage/signup_login_screens/login_page.dart';




class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordNameController = TextEditingController();
  TextEditingController cpasswordNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  String erromessageshow = "";
  bool isContainerVisibleerror = false;

  GlobalKey<FormState>formkey = GlobalKey<FormState>();


  Future signup() async {
    if (formkey.currentState!.validate()){
      if (passwordNameController.text.toString() == cpasswordNameController.text.toString()){

        if (selectedValue != values[0] && checkboxValue){
          try{
            final url = Uri.parse(Config.REGISTRATION);
            final body = jsonEncode({

                      "fullname": fullNameController.text,
                      "email" : emailController.text,
                      "password" : passwordNameController.text,
                      "company_name": companyNameController.text,
                      "source": selectedValue
                });
            final response = await http.post(url, body: body);

            if (response.statusCode == 200){

              print('Response body: ${response.body}');
              if (jsonDecode(response.body)['code'] == 1) {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

              }else{
                setState(() {
                  erromessageshow = '';
                  String message = jsonDecode(response.body)['description'];
                  if (message.toLowerCase().contains('email')){
                    isContainerVisibleerror =false;
                    erromessageshow = jsonDecode(response.body)['description'];
                  }else{
                    isContainerVisibleerror =true;
                    erromessageshow = jsonDecode(response.body)['description'];
                  }

                });
                // // User already exists
                // print('User already exists.');
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
          setState(() {
            isContainerVisibleerror =true;
            erromessageshow = 'Please select dropdownlist/and Checkbox';
          });
          // print("Please select dropdownlist");
        }
      }else{
        setState(() {
          isContainerVisibleerror =true;
          erromessageshow = "password and confirm password don't match";
        });
        // print("password and confirm password don't match");
      }
    }else{
      return formkey; //you can't register without filling all fields
    }
  }

  // Future<void> signup() async {
  //   final url = Uri.parse("http://13.233.143.13/uptime/registration");
  //
  //   final body = jsonEncode({
  //
  //                   "fullname": fullNameController.text,
  //                   "email" : emailController.text,
  //                   "password" : passwordNameController.text,
  //                   "company_name": companyNameController.text,
  //                   "source": selectedValue
  //   });
  //
  //   final response = await http.post(url, body: body);
  //
  //   if (response.statusCode == 200) {
  //     // User created successfully
  //     if (jsonDecode(response.body)['code'] == 0) {
  //       // User registered successfully
  //       print('User created successfully');
  //       print('Response body: ${response.body}');
  //     } else if (jsonDecode(response.body)['code'] == 1) {
  //       // User already exists
  //       print('User already exists.');
  //       print('Response body: ${response.body}');
  //     }
  //
  //   } else {
  //     // Error occurred
  //     print('Error: ${response.statusCode}');
  //     print('Response body: ${response.body}');
  //   }
  // }


  bool checkboxValue = false;
  List<String> values = [
    '  Please, choose the first interaction you remember.',
    '  Online community (e.g. GitHub, Reddit, Stack Overflow,  Hacker News, ...)',
    '  Website article, blog (not ours)',
    '  Review site (e.g. G2, Capterra, ...)',
    '  Search engine (e.g. Google, Bing, ...)',
    '  App store listing (App Store, Google Play)',
    '  Social media (e.g. Twitter / Quora / Facebook / LinkedIn...)',
    '  YouTube',
    '  Recommended by a friend',
    '  Message group (e.g. Discord, Slack, Telegram, ...)',
    '  Event (e.g. workshop, conference or meet up)',
    '  Podcast',
    '  Other'
  ];
  String selectedValue = '  Please, choose the first interaction you remember.';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Create your FREE account.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text('It takes just 30 seconds. Go ahead!',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Form(
                  key: formkey,

                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30, top: 25),
                          child: Text('Your full name',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: TextFormField(
                            controller: fullNameController,
                            // obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'e.g. John Doe',
                            ),
                            // inputFormatters: [ FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))],
                            validator: ValidationBuilder(requiredMessage: 'Full name is required').maxLength(30).required().build(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                          child: Text('Your e-mail',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: TextFormField(
                            controller: emailController,

                            decoration: InputDecoration(
                              errorText: erromessageshow.isNotEmpty && !isContainerVisibleerror? erromessageshow: null,
                              border: OutlineInputBorder(),
                              hintText: 'e.g. info@example.com',
                            ),
                            validator: ValidationBuilder(requiredMessage: 'E-mail is required').email().maxLength(50).required().build(),

                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                          child: Text('Enter your password(min. 8 characters)',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: TextFormField(

                            controller: cpasswordNameController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '******',
                            ),
                            validator: ValidationBuilder(requiredMessage: 'Password is required').minLength(8).required().build(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                          child: Text('Confirm password',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: TextFormField(
                            controller: passwordNameController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '******',
                            ),
                            validator: ValidationBuilder(requiredMessage: 'Confirm password is required').minLength(8).required().build(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30, top: 25),
                          child: Text('Enter Company Name',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                          child: TextFormField(
                            // obscureText: true,
                            controller: companyNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Company name',
                            ),
                            validator: ValidationBuilder(requiredMessage: 'Company name is required').minLength(5).required().build(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 30, top: 15),
                          child: Text('How did you find out about UptimeRobot?',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 10, left: 30, right: 30, bottom: 25),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                          ),
                          child: DropdownButtonFormField<String>(
                            hint: Text(selectedValue),
                            dropdownColor: Colors.white,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 25,
                            isExpanded: true,
                            // underline: SizedBox(),
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                            value: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                            items: values.map<DropdownMenuItem<String>>((
                                String value) {
                              return DropdownMenuItem<String>(
                                value: value,

                                child: Text(
                                  value, style: TextStyle(fontSize: 13,color: Colors.black),),
                              );
                            }).toList(),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 22),
                            Checkbox(
                              value: checkboxValue,
                              onChanged: (onChange) {
                                setState(() {
                                  checkboxValue = onChange!;
                                });
                              },
                            ),
                            Expanded(child: Text(
                              'Inform me about new feature and update(max. twice a month)',
                              style: TextStyle(fontSize: 13),)),
                          ],
                        ),
                        if (isContainerVisibleerror)
                          Container(
                            height :60,
                            width: 420,
                            color: Color(0xfff7b3c2),
                            margin: EdgeInsets.only(right: 30, left: 30, top: 30),
                            child: Center(
                              child: Text(erromessageshow,
                                //
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: InkWell(
                            onTap: (){
                              signup();
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30, bottom: 30),
                              width: 400,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text('Register now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text('Already have an account?',
                      style: TextStyle(fontSize: 16,
                          color: Colors.green,
                          decoration: TextDecoration.underline),),
                  )),
              Container(
                margin: EdgeInsets.only(
                    right: 20, left: 20, top: 30, bottom: 30),
                child: Text('NOVASarc @ 2023. All Rights Reserved',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
