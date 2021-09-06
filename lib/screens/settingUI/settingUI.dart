import 'package:carocom/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import 'Usersetting.dart';


class SettingUI extends StatelessWidget {
  const SettingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      child: Scaffold(

           body:Container(
          padding: EdgeInsets.only(left: 16, top: 25,right: 16),
          child: ListView(
            children: [
              Text('Settings',
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,) ,),
              SizedBox(height: 40,),
              Row(
                children: [
                  Icon(Icons.handyman_rounded,
                    color: accentcolork,),
                  SizedBox(width: 8,),
                  Text(
                    "Product",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
                  ),

                ],
              ),
              Divider(
                height: 15,thickness: 2,
              ),

              productset(context, 'Your Product'),
              productset(context, 'Draft Product'),
              SizedBox(height: 40,),
              Row(
                children: [
                  Icon(Icons.person_outline_sharp,
                    color: accentcolork,),
                  SizedBox(width: 8,),
                  Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
                  ),

                ],
              ),
              Divider(
                height: 15,thickness: 2,
              ),
              ListSetting(context,"Change your Account info",),
              ListNotification(context,"Change your Language","English","Francais","Arab"),
              SizedBox(height: 40,),
              Row(
                children: [
                  Icon(Icons.volume_up,
                    color: accentcolork,),
                  SizedBox(width: 8,),
                  Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
                  ),

                ],
              ),
              Divider(
                height: 15,thickness: 2,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notify me',style: TextStyle(color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
                  Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          dragStartBehavior: DragStartBehavior.start,
                          trackColor: Colors.redAccent,
                          activeColor: accentcolork,
                          value: true,
                          onChanged: (bool val){

                          }))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification items',style: TextStyle(color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
                  Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          dragStartBehavior: DragStartBehavior.start,
                          trackColor: Colors.redAccent,
                          activeColor: accentcolork,
                          value: false,
                          onChanged: (bool val){

                          }))
                ],
              ),
              SizedBox(height: 100,),
              Center(

                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:160, vertical: 40 ),

                    child: SafeArea(
                      child: Expanded(
                        child: FlatButton(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 50,
                          color: accentcolork,
                          child:Text(
                              'SIGN OUT',
                              style:TextStyle(
                                color: Color(0xff2c2b3f),
                                fontSize: 16,
                                letterSpacing: 2.2,

                              )
                          ) ,
                          onPressed: ()
                          {

                          },
                        ),
                      ),
                    ),
                  ),
                ),


            ],
          ),
        ),
        ),
      
    );

  }

  GestureDetector ListNotification(BuildContext context,String title,option1,option2,option3) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(option1),
                    Text(option2),
                    Text(option3),
                  ],
                ),
                actions: [
                  FlatButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("close"))
                ],
              );
            });

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
              style: TextStyle(color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 18),),
            Icon(Icons.arrow_forward_ios,color:Colors.grey ,)
          ],
        ),
      ),
    );
  }
}
GestureDetector ListSetting(BuildContext context,String title) {
  return GestureDetector(
    onTap: (){

      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => UserSettingUi())
      );

    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: TextStyle(color: Colors.grey[600],
                fontWeight: FontWeight.w500,
                fontSize: 18),),
          Icon(Icons.arrow_forward_ios,color:Colors.grey ,)
        ],
      ),
    ),
  );
}

GestureDetector productset(BuildContext context,String title) {
  return GestureDetector(
    onTap: (){

      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => UserSettingUi())
      );

    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: TextStyle(color: Colors.grey[600],
                fontWeight: FontWeight.w500,
                fontSize: 18),),
          Icon(Icons.arrow_forward_ios,color:Colors.grey ,)
        ],
      ),
    ),
  );
}



