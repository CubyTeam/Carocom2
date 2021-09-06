import 'package:carocom/classes/search.dart';
import 'package:carocom/models/product.dart';
import 'package:carocom/screens/homepage.dart';
import 'package:carocom/widget/buildCategory.dart';
import 'package:carocom/widget/itemcard.dart';
import 'package:flutter/material.dart';
import 'package:carocom/constant/color.dart';


class categoryPage extends StatefulWidget {
  const categoryPage({Key? key}) : super(key: key);

  @override
  _categoryPageState createState() => _categoryPageState();
}

class _categoryPageState extends State<categoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,

      body:
      Container(
        child: Column(
          children: [
            categories(),


    ],
        ),
      ),




    );
  }
}
