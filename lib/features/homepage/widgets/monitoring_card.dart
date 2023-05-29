import 'package:flutter/material.dart';

class MonitoringCard extends StatefulWidget {
  String imagePath;
  String title;
  String description;
  String buttonType;

  MonitoringCard({Key? key,required this.imagePath, required this.title, required this.description, required this.buttonType}) : super(key: key);

  @override
  State<MonitoringCard> createState() => _MonitoringCardState();
}

class _MonitoringCardState extends State<MonitoringCard> {
  bool isHover = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Card(
        color: Colors.white,
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          margin: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width*0.25,
          height: 350,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
            Image.asset(widget.imagePath,height: 70,width: 100,),
              SizedBox(height: 16,),
              Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              SizedBox(height: 16,),
              Text(widget.description,maxLines: 5,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 20),),
              SizedBox(height: 16,),
              Theme(
                data: ThemeData(splashColor: Colors.transparent,hoverColor: Colors.transparent),
                child: InkWell(

                  onTap: (){},
                    onHover: (value){
                    isHover = value;
                    setState(() {

                    });

                    },
                  child: Card(

                      color: isHover? Colors.green:Colors.white,
                    elevation: 20,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),

                  child: SizedBox(
                    height: 48,
                    width: 215,
                    child: Center(
                      child: Text(widget.buttonType,style: TextStyle(color: isHover? Colors.white:Colors.green,fontWeight: FontWeight.bold,fontSize: 18),

                      ),
                    ),
                  ),
                )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



