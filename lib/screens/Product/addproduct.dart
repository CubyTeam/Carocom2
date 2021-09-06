import 'package:carocom/constant/color.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkblue,
      ),
      body: addproduct(),
    );
  }
}

class addproduct extends StatelessWidget {
  const addproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
            Container(

            )
        ],
      ),
    );
  }
}
