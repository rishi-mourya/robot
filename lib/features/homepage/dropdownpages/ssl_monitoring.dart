import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SslMonitoring extends StatefulWidget {
  const SslMonitoring({super.key});

  @override
  State<SslMonitoring> createState() => _SslMonitoringState();
}

class _SslMonitoringState extends State<SslMonitoring> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 601) {
            return HorizontalView();
          } else {
            return VerticalView();
          }
          },)
      ,);
  }
}
Widget VerticalView() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue.withOpacity(0.3),
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
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const HomeScreen()),
                          // );
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const WebsiteMonitoring()),
                    // );
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 30),
                child: ListTile(
                  leading: Icon(Icons.watch_later_outlined,color:Colors.white),
                  title: Text('Cron job Monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const CronJobMonitoring()),
                    // );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: ListTile(
                  leading: Icon(Icons.poll_rounded,color:Colors.white),
                  title: Text('Port monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const PortMonitoring()),
                    // );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: ListTile(
                  leading: Icon(Icons.health_and_safety_rounded,color:Colors.white),
                  title: Text('SSL monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const SslMonitoring()),
                    // );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: ListTile(
                  leading: Icon(Icons.key_outlined,color:Colors.white),
                  title: Text('Keyword monitoring',style: TextStyle(fontSize: 20,color:Colors.white),),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const KeywordMonitoring()),
                    // );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,bottom: 30),
                child: ListTile(
                  leading: Icon(Icons.network_ping_rounded,color:Colors.white),
                  title: Text('Ping monitoring',style: TextStyle(fontSize: 20,color:Colors.white)),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const PingMonitoring()),
                    // );
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const PingMonitoring()),
                    // );
                  },
                ),
              ),
              Container(margin:EdgeInsets.only(top: 30,bottom: 30),color: Colors.grey,height: 1.5,),
              Container(
                margin:EdgeInsets.only(top: 30,bottom: 30),
                color: Colors.grey,
                child: ElevatedButton(

                    onPressed: (){},
                    child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff3bd671),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(child: Text('Register for Free',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color:Colors.white))),
                        ))
                ),
              )


            ],
          ),
        ),

      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[Text("Hello"), Text("World")],),),);}
Widget HorizontalView() {
  return Scaffold(
    body:  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          child: InkWell(
            onTap: (){},
            child: Text('Monitoring',
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          )),
      Container(
          child: InkWell(
            onTap: (){},
            child: Text('Integrations',
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          )),
      Container(
          child: InkWell(
            onTap: (){},
            child: Text('Status page',
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          )),
      Container(
          child: InkWell(
            onTap: (){},
            child: Text('Pricing',
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          )),
    ],
  ),
  );
}