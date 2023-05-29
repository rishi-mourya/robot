
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:robot/features/appbarOptions/integrations.dart';
import 'package:flutter_switch/flutter_switch.dart';



import 'package:robot/features/homepage/dropdownpages/cron_job_monitoring.dart';
import 'package:robot/features/homepage/dropdownpages/keyword_monitoring.dart';
import 'package:robot/features/homepage/dropdownpages/ping_monitoring.dart';
import 'package:robot/features/homepage/dropdownpages/port_monitoring.dart';
import 'package:robot/features/homepage/dropdownpages/ssl_monitoring.dart';
import 'package:robot/features/homepage/dropdownpages/website_monitoring.dart';
import 'package:robot/features/homepage/signup_login_screens/login_page.dart';
import 'package:robot/features/homepage/signup_login_screens/signup_page.dart';
import 'package:robot/features/homepage/widgets/monitoring_card.dart';
import 'package:robot/features/homepage/widgets/subscribe_register_Card.dart';

import '../appbarOptions/pricing.dart';
import '../appbarOptions/status_page.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
 

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Color(0xff131a26),
      debugShowCheckedModeBanner: false,

      home: LayoutBuilder(

        builder: (context, constraints) {
          if (constraints.maxWidth >= 630 && constraints.maxWidth <=1200) {
            return MiddleScreenView(context);
          } else if (constraints.maxWidth >=1200 ){
            return HorizontalView(context);
          }
          else {
            return VerticleScreenView(context);
          }
        },),
    );
  }
}


class MiddleScreenView extends StatefulWidget {
  const MiddleScreenView(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<MiddleScreenView> createState() => _MiddleScreenViewState();
}

class _MiddleScreenViewState extends State<MiddleScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('UptimeRobot',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: InkWell(
                    onTap: (){},
                    child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff3bd671),
                        ),
                        child: Center(child: Text('Register for Free',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.white))))
                ),
              )
            ],

          ),
        ) ,
        backgroundColor: Color(0xff131a26),
        elevation: 0,

      ),


      endDrawer:
      Container(
        width: double.infinity,

        child: Drawer(

          child: Container(

            color: Color(0xff131a26),
            child: ListView(
              children: [
                DrawerHeader(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text('UptimeRobot',
                          style: TextStyle(
                              fontSize: 35,fontWeight: FontWeight.bold,color:Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: IconButton(
                          icon: Icon(Icons.close,size: 26,color:Colors.white),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },),)
                    ],
                  ),

                ),
                Container(color: Colors.grey,height: 1.5,),
                Container(
                  margin: EdgeInsets.only(left: 45,top: 70,bottom: 25),
                  child: Text('Monitors',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Colors.white)),
                ),

                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(

                    leading: Icon(Icons.home_max,color:Colors.white),
                    title: Text('Website monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WebsiteMonitoring()),
                      );
                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.watch_later_outlined,color:Colors.white),
                    title: Text('Cron job Monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CronJobMonitoring()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.poll_rounded,color:Colors.white),
                    title: Text('Port monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PortMonitoring()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.health_and_safety_rounded,color:Colors.white),
                    title: Text('SSL monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.key_outlined,color:Colors.white),
                    title: Text('Keyword monitoring',style: TextStyle(fontSize: 20,color:Colors.white),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KeywordMonitoring()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 30),
                  child: ListTile(
                    leading: Icon(Icons.network_ping_rounded,color:Colors.white),
                    title: Text('Ping monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PingMonitoring()),
                      );
                    },
                  ),
                ),
                Container(margin:EdgeInsets.only(top: 30,bottom: 30),color: Colors.grey,height: 1.5,),

                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 14,top: 30),
                  child: ListTile(
                    title: Text('Integrations',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const PingMonitoring()),
                      // );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 14),
                  child: ListTile(
                    title: Text('Status Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StatusPageScreen()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 14),
                  child: ListTile(
                    title: Text('Pricing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const PingMonitoring()),
                      // );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 30),
                  child: ListTile(
                    title: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      });
                    },
                  ),
                ),
                Container(margin:EdgeInsets.only(top: 30,bottom: 30),color: Colors.grey,height: 1.5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: InkWell(

                      onTap: (){
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                        });
                      },
                      child: Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff3bd671),
                          ),
                          child: Center(child: Text('Register for Free',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.white))))
                  ),
                )


              ],
            ),
          ),

        ),
      ),
    );
  }
}


class VerticleScreenView extends StatefulWidget {
  const VerticleScreenView(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<VerticleScreenView> createState() => _VerticleScreenViewState();
}

class _VerticleScreenViewState extends State<VerticleScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message),
      ),
      appBar: AppBar(

        title: Text('UptimeRobot',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),) ,
        backgroundColor: Color(0xff131a26),
        elevation: 0,
      ),
      endDrawer:
      Container(
        width: double.infinity,

        child: Drawer(

          child: Container(

            color: Color(0xff131a26),
            child: ListView(
              children: [
                DrawerHeader(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text('UptimeRobot',
                          style: TextStyle(
                              fontSize: 35,fontWeight: FontWeight.bold,color:Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: IconButton(
                          icon: Icon(Icons.close,size: 26,color:Colors.white),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },),)
                    ],
                  ),

                ),
                Container(color: Colors.grey,height: 1.5,),
                Container(
                  margin: EdgeInsets.only(left: 45,top: 70,bottom: 25),
                  child: Text('Monitors',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Colors.white)),
                ),

                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(

                    leading: Icon(Icons.home_max,color:Colors.white),
                    title: Text('Website monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> WebsiteMonitoring()));
                      });

                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.watch_later_outlined,color:Colors.white),
                    title: Text('Cron job Monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CronJobMonitoring()));
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.poll_rounded,color:Colors.white),
                    title: Text('Port monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PortMonitoring()));
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.health_and_safety_rounded,color:Colors.white),
                    title: Text('SSL monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SslMonitoring()));
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(Icons.key_outlined,color:Colors.white),
                    title: Text('Keyword monitoring',style: TextStyle(fontSize: 20,color:Colors.white),),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> KeywordMonitoring()));
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 30),
                  child: ListTile(
                    leading: Icon(Icons.network_ping_rounded,color:Colors.white),
                    title: Text('Ping monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PingMonitoring()));
                      });
                    },
                  ),
                ),
                Container(margin:EdgeInsets.only(top: 30,bottom: 30),color: Colors.grey,height: 1.5,),

                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 14,top: 30),
                  child: ListTile(
                    title: Text('Integrations',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> IntegrationsScreen()));
                      }
                      );

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 14),
                  child: ListTile(
                    title: Text('Status Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> StatusPageScreen()));
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 14),
                  child: ListTile(
                    title: Text('Pricing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PricingScreen()));
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,bottom: 30),
                  child: ListTile(
                    title: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white)),
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      });
                    },
                  ),
                ),
                Container(margin:EdgeInsets.only(top: 30,bottom: 30),color: Colors.grey,height: 1.5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: InkWell(
                      onTap: (){},
                      child: Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff3bd671),
                          ),
                          child: Center(child: Text('Register for Free',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Colors.white))))
                  ),
                )


              ],
            ),
          ),

        ),
      ),

    );
  }
}




class HorizontalView extends StatefulWidget {
  const HorizontalView(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<HorizontalView> createState() => _HorizontalViewState();
}

class _HorizontalViewState extends State<HorizontalView> {
  bool isHoverMonitoring = false;
  bool isHoverIntegerations = false;
  bool isHoverStatusPage = false;
  bool isHoverPricing = false;
  bool isHoverLogin = false;
  bool isHoverRegister = false;
  bool isHoverStartMoniotring = false;
  bool isHoverseeFeatureComparison = false;


  int currentPage = 0;

  bool status = false;

//these are hover variables for bottom of homepage links underlines( Monitoring )
  bool websiteHover = false;
  bool sslHover = false;
  bool pingHover = false;
  bool portHover = false;
  bool cronHover = false;
  bool keywordHover = false;

  //these are hover variables for bottom of homepage links underlines( Company )
  bool pricingHover = false;
  bool blogHover = false;
  bool AffiliateHover = false;
  bool termprivacyHover = false;
  bool contactusHover = false;

  //these are hover variables for bottom of homepage links underlines( Resources )
  bool integrationsHover = false;
  bool apiHover = false;
  bool faqsHover = false;
  bool helpcenterHover = false;
  bool locationsHover = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message_rounded),
      ),

      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xff131a26),
        elevation: 0,
        leading: Container(color: Color(0xff131a26),width: double.infinity,),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              width: 730,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  // Container(width: 10),
                  Container(
                      child: InkWell(
                        onTap: (){},
                        child: Text('UptimeRobot',
                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                      )
                  ),

                  InkWell(
                      onTap: (){},
                      onHover: (value){
                        isHoverMonitoring = value;
                        setState(() {

                        });

                      },
                      child: Text("Monitoring",style: TextStyle(color: isHoverMonitoring? Colors.green:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                      )
                  ),

                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> IntegrationsScreen()));
                        });
                      },
                      onHover: (value){
                        isHoverIntegerations = value;
                        setState(() {

                        });

                      },
                      child: Text("Integerations",style: TextStyle(color: isHoverIntegerations? Colors.green:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                      )
                  ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StatusPageScreen()));
                        });
                      },
                      onHover: (value){
                        isHoverStatusPage = value;
                        setState(() {

                        });

                      },
                      child: Text("Status Page",style: TextStyle(color: isHoverStatusPage? Colors.green:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                      )
                  ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PricingScreen()));
                        });
                      },
                      onHover: (value){
                        isHoverPricing = value;
                        setState(() {

                        });

                      },
                      child: Text("Pricing",style: TextStyle(color: isHoverPricing? Colors.green:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                      )
                  ),

                ],
              ),
            ),
            Container(
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                        });
                      },
                      onHover: (value){
                        isHoverLogin = value;
                        setState(() {

                        });

                      },
                      child: Text("Log In",style: TextStyle(color: isHoverLogin? Colors.green:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                      )
                  ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                        });
                      },
                      onHover: (value){
                        isHoverRegister = value;
                        setState(() {

                        });

                      },
                      child: Card(margin: EdgeInsets.only(right:60),

                        color: isHoverRegister? Colors.green:const Color(0xff3bd671),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),

                        child: SizedBox(
                          height: 40,
                          width: 180,
                          child: Center(
                            child: Text("Register for Free",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),

                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              color : Color(0xff131a26),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 100,top: 200),
                        width: 1050,
                        height: 250,
                        child: RichText(
                          text: TextSpan(
                            text: "The world's leading \n", style: TextStyle(fontSize: 53,fontWeight: FontWeight.bold,color: Colors.white),
                            children:  <TextSpan>[
                              TextSpan(text: 'uptime monitoring', style: TextStyle(fontSize: 53,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                              TextSpan(text: ' service'),
                              TextSpan(text: '.', style: TextStyle(fontSize: 53,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                              TextSpan(text: '\n\nGet ', style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white)),
                              TextSpan(text: 'Get 50 monitors ', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white)),
                              TextSpan(text: 'with 5-minute checks ', style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white)),

                              TextSpan(text: ' totally FREE', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                              TextSpan(text: '.', style: TextStyle(fontSize: 26,fontWeight: FontWeight.w400,color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: (){},
                          onHover: (value){
                            isHoverStartMoniotring = value;
                            setState(() {

                            });

                          },
                          child: Card(margin: EdgeInsets.only(left: 100),
                            elevation: 20,

                            color: isHoverStartMoniotring? Colors.green:const Color(0xff3bd671),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),

                            child: SizedBox(
                              height: 60,
                              width: 360,
                              child: Center(
                                child: Text("Start monitoring in 30 seconds",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),

                                ),
                              ),
                            ),
                          )
                      ),


                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
            ),
            Container(

              width: double.infinity,
              height: 300,
              //color : Color(0xff687790)
              color : Color(0xff131a26),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: "Currently, we keep an eye on ", style: TextStyle(fontSize: 18,color: Color(0xff687790)),
                    children:  <TextSpan>[
                      TextSpan(text: '7,100,000 ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                      TextSpan(text: 'monitors for more than ', style: TextStyle(fontSize: 18,color : Color(0xff687790))),
                      TextSpan(text: '1,900,000 ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                      TextSpan(text: 'users and companies.', style: TextStyle(fontSize: 18,color : Color(0xff687790))),

                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 60),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/godaddy.png',height: 120,width: 200,),
                      Image.asset('assets/images/nasa.png',height: 120,width: 200,),
                      Image.asset('assets/images/moody.png',height: 120,width: 200,),
                      Image.asset('assets/images/ibm.png',height: 120,width: 200,),
                      Image.asset('assets/images/expedia.png',height: 120,width: 200,),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80,bottom: 60),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "All you really care about \n", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff131a26)),
                          children:  <TextSpan>[

                            TextSpan(text: 'monitored ', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                            TextSpan(text: 'in one place', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                            TextSpan(text: '.', style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                        child: MonitoringCard(
                          imagePath: 'assets/images/portMonitoring.png',
                          title: "Website monitoring",
                          description: "Be the first to know that your website is down! Reliable monitoring warns you before any significant trouble and saves you money.",
                          buttonType: 'Website Monitoring',
                        ),
                        color: Colors.white,

                        width: 347,
                        height: 435,

                      ),
                      Container(
                        child: MonitoringCard(
                          imagePath: 'assets/images/portMonitoring.png',
                          title: "SSL monitoring",
                          description: "Don’t lose visitors because of expired SSL certificate. Get notified 30, 14 and 7 days before expiration so you have time to renew.",
                          buttonType: 'SSL Monitoring',
                        ),
                        width: 347,
                        height: 440,
                        color: Colors.white,
                      ),
                      Container(
                        child: MonitoringCard(
                          imagePath: 'assets/images/portMonitoring.png',
                          title: "Ping monitoring",
                          description: "Leverage one of the most used tools administrators use to check the availability of network devices.",
                          buttonType: 'Ping Monitoring',
                        ),
                        width: 347,
                        height: 440,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                        child: MonitoringCard(
                          imagePath: 'assets/images/portMonitoring.png',
                          title: "Port monitoring",
                          description: "Is the email service still UP? Or what about the critical database server? Let's check! Monitor any specific service running on any port.",
                          buttonType: 'Port Monitoring',
                        ),
                        color: Colors.white,

                        width: 347,
                        height: 440,

                      ),
                      Container(
                        child: MonitoringCard(
                          imagePath: 'assets/images/portMonitoring.png',
                          title: "Corn job monitoring",
                          description: "Also known as heartbeat monitoring. Monitor recurring background jobs or intranet devices connected to the internet.",
                          buttonType: 'Corn job Monitoring',
                        ),
                        width: 347,
                        height: 440,
                        color: Colors.white,
                      ),
                      Container(
                        child: MonitoringCard(
                          imagePath: 'assets/images/portMonitoring.png',
                          title: "Keyword monitoring",
                          description: "Use keyword monitoring to check presence or absence of specific text in the request's response body (typically HTML or JSON).",
                          buttonType: 'Keyword monitoring',
                        ),
                        width: 347,
                        height: 440,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Theme(
                    data: ThemeData(splashColor: Colors.transparent,hoverColor: Colors.transparent),
                    child: InkWell(
                        onTap: (){},
                        onHover: (value){
                          isHoverStartMoniotring = value;
                          setState(() {

                          });

                        },
                        child: Card(
                          elevation: 20,

                          color: isHoverStartMoniotring? Colors.green:const Color(0xff3bd671),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),

                          child: SizedBox(
                            height: 50,
                            width: 330,
                            child: Center(
                              child: Text("Start monitoring in 30 seconds",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),

                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50,bottom: 120),
                    child: RichText(
                      text: TextSpan(
                        text: "Advanced features ", style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color(0xff3bd671)),
                        children:  <TextSpan>[

                          TextSpan(text: 'for advanced users', style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                          TextSpan(text: '.', style: TextStyle(fontSize:32,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Share incident updates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24))),
                            SizedBox(height: 16,),
                            Container(child: Text("Send status updates via an email to your Status page subscribers.",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                            SizedBox(height: 16,),
                          ],
                        ),
                        width: 348,
                        margin: EdgeInsets.only(left: 52),

                      ),
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("White-labeled Status pages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24))),
                            SizedBox(height: 16,),
                            Container(child: Text("Customize colors, add your logo or even link your custom domain.",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                            SizedBox(height: 16,),
                          ],
                        ),
                        width: 348,

                      ),
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Response times",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24))),
                            SizedBox(height: 16,),
                            Container(child: Text("See your response times in a chart to reveal performance hiccups.",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                            SizedBox(height: 16,),
                          ],
                        ),
                        width: 348,
                        margin: EdgeInsets.only(right: 52),


                      ),


                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Maintenance windows",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24))),
                            SizedBox(height: 16,),
                            Container(child: Text("Set up maintenance windows to prevent alarms during the planned maintenance.",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                            SizedBox(height: 16,),
                          ],
                        ),
                        width: 348,
                        margin: EdgeInsets.only(left: 52),

                      ),
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Custom HTTP requests",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24))),
                            SizedBox(height: 16,),
                            Container(child: Text("Need to set an advanced HTTP header? We've got you covered!",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                            SizedBox(height: 16,),
                          ],
                        ),
                        width: 348,

                      ),
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Multi-location checks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24))),
                            SizedBox(height: 16,),
                            Container(child: Text("We verify incidents from multiple locations to prevent false-positives.",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                            SizedBox(height: 16,),
                          ],
                        ),
                        width: 348,
                        margin: EdgeInsets.only(right: 52),
                      ),
                    ],
                  ),
                  SizedBox(height: 100,),

                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 150,bottom: 150),
              height: 650,
              color : Color(0xff131a26),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: ,
                          children: [
                            Icon(
                              Icons.email,color: Colors.white,size: 50,
                            ),
                            Icon(
                                Icons.phone_android,color: Colors.white,size: 50
                            ),
                            Icon(
                                Icons.call,color: Colors.white,size: 50
                            ),

                          ],
                        ),
                        width: 600,

                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: ,
                          children: [
                            Icon(
                              Icons.email,color: Colors.white,size: 50,
                            ),
                            Icon(
                                Icons.phone_android,color: Colors.white,size: 50
                            ),
                            Icon(
                                Icons.call,color: Colors.white,size: 50
                            ),

                          ],
                        ),
                        width: 600,

                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: ,
                          children: [
                            Icon(
                              Icons.email,color: Colors.white,size: 50,
                            ),
                            Icon(
                                Icons.phone_android,color: Colors.white,size: 50
                            ),
                            Icon(
                                Icons.call,color: Colors.white,size: 50
                            ),

                          ],
                        ),
                        width: 600,

                      ),
                    ],
                  ),
                  Container(
                      width: 300,
                      height: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Downtime happend.",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 42),),

                          Container(child: Text("Get notified!",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff3bd671),fontSize: 42),)),

                          Container(child: Text("Downtime happens even to the best of us. But it’s important to know it before customers are affected!",maxLines: 4,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 20),)),

                          InkWell(
                            onTap: (){},
                            child: Text('Show all integrations',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,decoration: TextDecoration.underline,),),
                          ),

                        ],
                      )
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 50),
              width: double.infinity,
              height: 700,
              // color : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 500,
                        width: 420,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Inform your customers about incidents with \n", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff131a26)),
                                children:  <TextSpan>[
                                  TextSpan(text: 'status pages', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                                  TextSpan(text: '.', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Text('Be transparent. Inform customers about planned outages. Show them how you thrive to make your service 100% online.',maxLines: 3, style: TextStyle(fontSize: 22,color: Color(0xff131a26))),
                            SizedBox(height: 30,),
                            Row(
                                children:[
                                  Theme(
                                    data: ThemeData(splashColor: Colors.transparent,hoverColor: Colors.transparent),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Text("Check LIVE demo ",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff3bd671)),),
                                    ),
                                  ),
                                  Text("or",style: TextStyle(fontSize:20)),
                                  Theme(
                                    data: ThemeData(splashColor: Colors.transparent,hoverColor: Colors.transparent),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Text(" Explore Status Pages",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff3bd671)),),
                                    ),
                                  )
                                ]
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 250,backgroundColor: Color(0xff3bd671),
                    child: Icon(Icons.circle,color: Color(0xff3bd671),),

                  ),

                ],
              ),
            ),
            Container(width: 1250,height:0.5,color:Colors.grey),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 50),
              width: double.infinity,
              height: 700,
              // color : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 300,backgroundColor: Color(0xff3bd671),
                        child: Icon(Icons.circle,color: Color(0xff3bd671),),

                      ),
                    ],

                  ),

                  Container(
                    height: 500,
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Keep monitoring \n", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff3bd671)),
                            children:  <TextSpan>[
                              TextSpan(text: 'everywhere you go', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                              TextSpan(text: '.', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text('Get instant notifications, manage monitors and check your uptime statistics on the go.',maxLines: 2, style: TextStyle(fontSize: 26,color: Color(0xff131a26))),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SvgPicture.asset("images/playstore.svg",width: 110,height: 50,),
                            SizedBox(width: 20,),
                            SvgPicture.asset("images/applestore.svg",width: 110,height: 50,),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(width: 1250,height:0.5,color:Colors.grey),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 50),
              width: double.infinity,
              height: 700,
              // color : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 250,backgroundColor: Color(0xff3bd671),
                        child: Icon(Icons.circle,color: Color(0xff3bd671),),

                      ),
                    ],

                  ),
                  Container(
                    height: 500,
                    width: 530,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Add your ", style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Color(0xff131a26)),
                            children:  <TextSpan>[
                              TextSpan(text: 'team members\n', style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                              TextSpan(text: 'to keep them notified', style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Color(0xff131a26))),

                              TextSpan(text: '.', style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text('You can invite all your team members to access your monitors, keep them notified and manage incidents. Choose from three levels of user access: read, write and notify-only.',maxLines: 4, style: TextStyle(fontSize: 24,color: Color(0xff131a26))),

                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(right: 260,left: 260),

              width: double.infinity,
              height: 650,
              color : Color(0xff131a26),
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: "It's the most ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
                              children:  <TextSpan>[
                                TextSpan(text: 'simple and easy monitoring app ', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                                TextSpan(text: "I know and it's made my daily life much easier", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white)),
                                TextSpan(text: '.', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            CircleAvatar(radius: 30,

                              backgroundImage: AssetImage("images/ardalis.png"),
                            ),
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: (){},
                              child: Text("@levelsio, maker of NomadList.com, RemoteOK.io and others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff3bd671)),),
                            )
                          ],
                        ),
                        Swiperow(),
                      ],
                    ),
                  ),

                  Container(

                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: "I use UptimeRobot to ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
                              children:  <TextSpan>[
                                TextSpan(text: 'get push notifications whenever my website goes DOWN', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                                TextSpan(text: '.', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),

                                TextSpan(text: " It's really easy and quick to set up and requires no extra changes to your websitehorz", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white)),
                                TextSpan(text: '.', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            CircleAvatar(radius: 30,

                              backgroundImage: AssetImage("images/ardalis.png"),
                            ),
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: (){},
                              child: Text("@marckohlbrugge, maker of BetaList.com, StartUp.jobs and others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Color(0xff3bd671)),),
                            ),
                          ],
                        ),
                        Swiperow(),
                      ],
                    ),
                  ),

                  Container(

                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: "We strive for minimal downtime, but if something goes wrong UptimeRobot makes sure that we know about it quickly. We switched to using UptimeRobot years ago as they offered the same services we were getting from a different provider but at a ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
                              children:  <TextSpan>[
                                TextSpan(text: 'fraction of the cost', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                                TextSpan(text: ".", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white)),

                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("images/4everproxy.png",height: 60,width: 220,),
                          ],
                        ),
                        Swiperow(),
                      ],
                    ),
                  ),
                  Container(

                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: "I've been using UptimeRobot for years as a ", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
                              children:  <TextSpan>[
                                TextSpan(text: 'cost-effective way to quickly alert ', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                                TextSpan(text: "me when my sites were down - and when they were back up", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white)),
                                TextSpan(text: '.', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            CircleAvatar(radius: 30,

                              backgroundImage: AssetImage("images/ardalis.png"),
                            ),
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: (){},
                              child: Text("~ Steve ardalis Smith~ Steve 'ardalis' Smith, Software Architect",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff3bd671)),),
                            ),
                          ],
                        ),
                        Swiperow(),
                      ],
                    ),
                  ),

                ],
                onPageChanged: (index){
                  setState((){
                    currentPage = index;
                  });
                },
              ),

            ),



            Container(
              width: double.infinity,
              // height: 1700,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  RichText(
                    text: TextSpan(
                      text: "Flexible ", style: TextStyle(fontSize: 52,fontWeight: FontWeight.bold,color: Color(0xff131a26)),
                      children:  <TextSpan>[
                        TextSpan(text: 'pricing ', style: TextStyle(fontSize: 52,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                        TextSpan(text: "options", style: TextStyle(fontSize: 52,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                        TextSpan(text: '.', style: TextStyle(fontSize:52,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),

                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  RichText(
                    text: TextSpan(
                      text: "Save ", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff131a26)),
                      children:  <TextSpan>[
                        TextSpan(text: '~20% ', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                        TextSpan(text: "with annual billing", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                        TextSpan(text: '.', style: TextStyle(fontSize:22,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),

                      ],
                    ),
                  ),
                  SizedBox(height: 50,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children : [

                      Text('Annual', style: TextStyle(fontSize:18,color:Colors.black)),
                      SizedBox(width: 15,),
                      FlutterSwitch(
                        width: 70.0,
                        height: 28.0,
                        toggleSize: 25.0,
                        toggleColor: Colors.green,
                        value: status,
                        padding: 2.0,

                        activeColor: Colors.black,
                        inactiveColor: Colors.black,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                      SizedBox(width: 15,),
                      Text('Monthly', style: TextStyle(fontSize:18,color:Colors.grey)),

                    ]
                  ),
                  SizedBox(height: 20,),

                  // we are using subscribe page widget of subscribeCard

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                    children: [

                      Container(

                        child: SubscribeCard(
                          imagePath: "images/free-subscription.svg",
                          titleImage: "Free.",
                          dollar: "\$ 0 /month",
                          dollarDetails: "Good for hobby projects. No credit card required!",
                          buttonType: "Register now",
                          monitors: "50 monitors",
                          smileEmoji: Icons.emoji_emotions_sharp,
                          incorrectEmoji : Icons.cancel,
                          correctEmoji : Icons.check_circle,
                          profileEmoji : Icons.person,
                          iconsdetails1: "5 min. monitoring interval",
                          iconsdetails2: "HTTP, port & ping monitor",
                          iconsdetails3: "Keyword monitor",
                          iconsdetails4: "SSL monitor",
                          iconsdetails5: "Only 6 integrations",
                          iconsdetails6: "Full-featured status pages",
                          iconsdetails7: "No extra seats available",

                        ),
                        color: Colors.white,

                        width: 280,
                        height: 650,

                      ),

                      Container(

                        child: SubscribeCard(
                          imagePath: "images/free-subscription.svg",
                          titleImage: "Solo.",
                          dollar: "\$ 7 /month",
                          dollarDetails: "Good for hobby projects. No credit card required!",
                          buttonType: "Register now",
                          monitors: "10-50 monitors",
                          smileEmoji: Icons.emoji_emotions_sharp,
                          incorrectEmoji : Icons.cancel,
                          correctEmoji : Icons.check_circle,
                          profileEmoji : Icons.person,
                          iconsdetails1: "60 sec. monitoring interval",
                          iconsdetails2: "HTTP, port & ping monitor",
                          iconsdetails3: "Keyword monitor",
                          iconsdetails4: "SSL monitor",
                          iconsdetails5: "Only 9 integrations",
                          iconsdetails6: "Full-featured status pages",
                          iconsdetails7: "No extra seats available",

                        ),
                        color: Colors.white,

                        width: 280,
                        height: 650,

                      ),
                      Container(

                        child: SubscribeCard(
                          imagePath: "images/free-subscription.svg",
                          titleImage: "Team.",
                          dollar: "\$ 29 /month",
                          dollarDetails: "Good for hobby projects. No credit card required!",
                          buttonType: "Register now",
                          monitors: "100 monitors",
                          smileEmoji: Icons.emoji_emotions_sharp,
                          incorrectEmoji : Icons.cancel,
                          correctEmoji : Icons.check_circle,
                          profileEmoji : Icons.person,
                          iconsdetails1: "60 sec. monitoring interval",
                          iconsdetails2: "HTTP, port & ping monitor",
                          iconsdetails3: "Keyword monitor",
                          iconsdetails4: "SSL monitor",
                          iconsdetails5: "All 12 integrations",
                          iconsdetails6: "Full-featured status pages",
                          iconsdetails7: "3 seats incl.",

                        ),
                        color: Colors.white,

                        width: 280,
                        height: 650,

                      ),
                      Container(

                        child: SubscribeCard(
                          imagePath: "images/free-subscription.svg",
                          titleImage: "Enterprise.",
                          dollar: "\$ 54 /month",
                          dollarDetails: "Good for hobby projects. No credit card required!",
                          buttonType: "Register now",
                          monitors: "200-1,000 monitors",
                          smileEmoji: Icons.emoji_emotions_sharp,
                          incorrectEmoji : Icons.cancel,
                          correctEmoji : Icons.check_circle,
                          profileEmoji : Icons.person,
                          iconsdetails1: "30 sec. monitoring interval",
                          iconsdetails2: "HTTP, port & ping monitor",
                          iconsdetails3: "Keyword monitor",
                          iconsdetails4: "SSL monitor",
                          iconsdetails5: "All 12 integrations",
                          iconsdetails6: "Full-featured status pages",
                          iconsdetails7: "5 seats incl.",

                        ),
                        color: Colors.white,

                        width: 280,
                        height: 650,

                      ),

                    ],
                  ),
                  SizedBox(height: 50,),
                  Theme(
                    data: ThemeData(splashColor: Colors.transparent,hoverColor: Colors.transparent),
                    child: InkWell(
                        onTap: (){},
                        onHover: (value){
                          isHoverseeFeatureComparison = value;
                          setState(() {

                          });

                        },
                        child: Card(

                          color: isHoverseeFeatureComparison? Color(0xff3bd671): Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),

                          child: SizedBox(
                            height: 50,
                            width: 280,
                            child: Center(
                              child: Text("See feature comparison",style: TextStyle(color: isHoverseeFeatureComparison? Colors.white:Color(0xff3bd671),fontWeight: FontWeight.bold,fontSize: 20),

                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 100,),
                  RichText(
                    text: TextSpan(
                      text: "Get your ", style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold,color: Color(0xff131a26)),
                      children:  <TextSpan>[
                        TextSpan(text: 'FREE account ', style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold,color: Color(0xff3bd671))),
                        TextSpan(text: "now,", style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold,color: Color(0xff131a26))),
                      ],
                    ),
                  ),
                  Text('50 monitors included!', style: TextStyle(fontSize:44,fontWeight: FontWeight.bold,color:  Color(0xff131a26))),
                  SizedBox(height: 50,),
                  Theme(
                    data: ThemeData(splashColor: Colors.transparent,hoverColor: Colors.transparent),
                    child: InkWell(
                        onTap: (){},
                        onHover: (value){
                          isHoverStartMoniotring = value;
                          setState(() {

                          });

                        },
                        child: Card(
                          elevation: 20,

                          color: isHoverStartMoniotring? Colors.green:const Color(0xff3bd671),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),

                          child: SizedBox(
                            height: 60,
                            width: 390,
                            child: Center(
                              child: Text("Start monitoring in 30 seconds",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),

                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('No credit card required!', style: TextStyle(fontSize:18,color:Colors.grey)),
                  SizedBox(height: 70,),
                  Text('Available also on:', style: TextStyle(fontSize:18,color:Colors.grey)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("images/playstore.svg",width: 110,height: 50,),
                      SizedBox(width: 20,),
                      SvgPicture.asset("images/applestore.svg",width: 110,height: 50,),
                    ],
                  ),
                  SizedBox(height: 150,),
                ],
              ),
            ),


            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 150,bottom: 150,right: 50,left: 50),
              height: 700,
              color : Color(0xff131a26),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 370,
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                                  });
                                },
                                child: Container(child: Text('UptimeRobot', style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                              SizedBox(height: 15,),
                              Container(child: Text("Downtime happens. Get notified!",style: TextStyle(color: Colors.white,fontSize: 20),)),
                              SizedBox(height: 15,),
                              Container(child: Text("Join more than 1,900,000 happy users! UptimeRobot is one of the most popular website monitoring services in the world.",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),)),
                              SizedBox(height: 15,),
                              Row(

                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.facebook_rounded,size: 35,color: Colors.grey,),
                                    backgroundColor: Color(0xff131a26),
                                  ),
                                  SizedBox(width: 9,),
                                  CircleAvatar(
                                    child: Icon(Icons.incomplete_circle,size: 35,color: Colors.grey,),
                                    backgroundColor: Color(0xff131a26),
                                  ),
                                  SizedBox(width: 9,),
                                  CircleAvatar(
                                    child: Icon(Icons.inbox_rounded
                                      ,size: 35,color: Colors.grey,),
                                    backgroundColor: Color(0xff131a26),
                                  ),
                                ],
                              )
                            ],
                          )
                      ),
                      SizedBox(width: 70,),
                      Container(
                        width: 200,
                        height: 280,
                        color : Color(0xff131a26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: RichText(
                                text: TextSpan(
                                  text: "Monitoring", style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
                                  children:  <TextSpan>[
                                    TextSpan(text: '.', style: TextStyle(fontSize:32,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(

                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> WebsiteMonitoring()));
                                  });
                                },
                                onHover: (value){
                                  websiteHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Website monitoring',
                                  style: TextStyle(
                                      decoration: websiteHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SslMonitoring()));
                                });
                              },
                                onHover: (value){
                                  sslHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('SSL monitoring',
                                  style: TextStyle(
                                      decoration: sslHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PingMonitoring()));
                                });
                              },
                                onHover: (value){
                                  pingHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Ping monitoring',
                                  style: TextStyle(
                                      decoration: pingHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PortMonitoring()));
                                });
                              },
                                onHover: (value){
                                  portHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Port monitoring',
                                  style: TextStyle(
                                      decoration: portHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CronJobMonitoring()));
                                });
                              },
                                onHover: (value){
                                  cronHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Cron monitoring',
                                  style: TextStyle(
                                      decoration: cronHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> KeywordMonitoring()));
                                });
                              },
                                onHover: (value){
                                  keywordHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Keyword monitoring',
                                  style: TextStyle(
                                      decoration: keywordHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                          ],
                        ),



                      ),
                      Container(
                        width: 200,
                        height: 280,
                        color : Color(0xff131a26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: RichText(
                                text: TextSpan(
                                  text: "Company", style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
                                  children:  <TextSpan>[
                                    TextSpan(text: '.', style: TextStyle(fontSize:32,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PricingScreen()));
                                });
                              },
                                onHover: (value){
                                  pricingHover = value;
                                  setState(() {});
                                },
                                child: Text('Pricing',
                                  style: TextStyle(
                                      decoration: pricingHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  blogHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Blog',
                                  style: TextStyle(
                                      decoration: blogHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  AffiliateHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Affiliate Program',
                                  style: TextStyle(
                                      decoration: AffiliateHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  termprivacyHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Term/Privacy',
                                  style: TextStyle(
                                      decoration: termprivacyHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  contactusHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Contact us',
                                  style: TextStyle(
                                      decoration: contactusHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            ElevatedButton(
                              child: Text('We are hiring!'),
                              style: ElevatedButton.styleFrom(
                                textStyle:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),backgroundColor: Colors.deepOrange,
                              ),
                              onPressed: () {},
                            ),

                          ],
                        ),



                      ),
                      Container(
                        width: 200,
                        height: 230,
                        color : Color(0xff131a26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: RichText(
                                text: TextSpan(
                                  text: "Resources", style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
                                  children:  <TextSpan>[
                                    TextSpan(text: '.', style: TextStyle(fontSize:32,fontWeight: FontWeight.bold,color:  Color(0xff3bd671))),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> IntegrationsScreen()));
                                });
                              },
                              onHover: (value){
                                integrationsHover = value;
                                setState(() {

                                });
                              },
                              child: Text('Integrations',
                                style: TextStyle(
                                    decoration: integrationsHover? TextDecoration.underline:TextDecoration.none ,
                                    decorationColor: Colors.white,
                                    decorationThickness: 1.8,
                                    fontSize: 18,
                                    color: Colors.white),

                              ),
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  apiHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('API',
                                  style: TextStyle(
                                      decoration: apiHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  faqsHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('FAQs',
                                  style: TextStyle(
                                      decoration: faqsHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  helpcenterHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Help Center',
                                  style: TextStyle(
                                      decoration: helpcenterHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                            InkWell(
                              onTap: (){},
                                onHover: (value){
                                  locationsHover = value;
                                  setState(() {

                                  });
                                },
                                child: Text('Locations & IPs',
                                  style: TextStyle(
                                      decoration: locationsHover? TextDecoration.underline:TextDecoration.none ,
                                      decorationColor: Colors.white,
                                      decorationThickness: 1.8,
                                      fontSize: 18,
                                      color: Colors.white),

                                )
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Lottie.asset('red_circle.json',width: 80,height: 80),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget Swiperow(){


    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          currentPage ==0?Icon(Icons.circle,size: 15,color: Colors.green,):Icon(Icons.circle,size: 15,color: Colors.grey,),
          currentPage ==1?Icon(Icons.circle,size: 15,color: Colors.green,):Icon(Icons.circle,size: 15,color: Colors.grey,),
          currentPage ==2?Icon(Icons.circle,size: 15,color: Colors.green,):Icon(Icons.circle,size: 15,color: Colors.grey,),
          currentPage ==3?Icon(Icons.circle,size: 15,color: Colors.green,):Icon(Icons.circle,size: 15,color: Colors.grey,),

        ],
      ),
    );
  }
}










