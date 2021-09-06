import 'package:carocom/constant/color.dart';
import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: [
             Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dacia',
                    style: TextStyle(color: accentcolork),),

                  IconButton(
                      icon: Icon(Icons.navigate_next_sharp,
                        color: accentcolork,),
                      onPressed: (){}),
                ],
              ),
            ],
          ),
          
          Row(
            children: <Widget> [
              Card(
                elevation: 0.0,
                child: Image.asset("assets/images/car1.jpg",
                fit: BoxFit.fill,
                width: 130.0,
                height: 150.0,),

              ),

            ],
          ),
        ],
      ),

    );
  }
}
