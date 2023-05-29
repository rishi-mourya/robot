import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class SubscribeCard extends StatefulWidget {
  String imagePath;
  String titleImage;
  String dollar;
  String dollarDetails;
  String monitors;
  String iconsdetails1;
  String iconsdetails2;
  String iconsdetails3;
  String iconsdetails4;
  String iconsdetails5;
  String iconsdetails6;
  String iconsdetails7;
  IconData smileEmoji;
  IconData correctEmoji;
  IconData incorrectEmoji;
  IconData profileEmoji;

  String buttonType;

  SubscribeCard({Key? key,required this.profileEmoji,required this.incorrectEmoji,required this.correctEmoji,required this.smileEmoji, required this.iconsdetails1, required this.iconsdetails2, required this.iconsdetails3, required this.iconsdetails4, required this.iconsdetails5, required this.iconsdetails6, required this.iconsdetails7,required this.monitors,required this.dollar,required this.dollarDetails,required this.imagePath, required this.titleImage, required this.buttonType}) : super(key: key);

  @override
  State<SubscribeCard> createState() => _SubscribeCardState();
}

class _SubscribeCardState extends State<SubscribeCard> {
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
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width*0.23,
          height: 650,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.titleImage,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                  SvgPicture.asset(widget.imagePath,width: 100,height: 50,),
                ],
              ),
              SizedBox(height: 10,),
              Text(widget.dollar,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              Text(widget.dollarDetails,maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
              SizedBox(height: 10,),
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

                      color: isHover? Colors.green:Color(0xff3bd671),
                      elevation: 20,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),

                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(widget.buttonType,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                          ),
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 16,),
              Text(widget.monitors,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),
              SizedBox(height: 16,),
              Row(
                children: [
                  Icon(widget.smileEmoji,color: Colors.yellow,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails1,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(widget.correctEmoji,color: Colors.green,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails2,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(widget.correctEmoji,color: Colors.green,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails3,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(widget.incorrectEmoji,color: Colors.red,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails4,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(widget.smileEmoji,color: Colors.yellow,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails5,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(widget.incorrectEmoji,color: Colors.red,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails6,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                children: [
                  Icon(widget.incorrectEmoji,color: Colors.red,size: 25,),
                  SizedBox(width: 8,),
                  Text(widget.iconsdetails7,style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}



