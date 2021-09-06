import 'package:carocom/constant/color.dart';
import 'package:flutter/material.dart';

class categories extends StatefulWidget {

 @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List<String> category = ["Dacia", "Ford" ,"Audi", "Renault", "Toyota ", "BMW", "Nissan", "Mercedes ", "Fiat"];
 int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 80,
      child: ListView.builder(
        scrollDirection:  Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }
  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? darkblue: Colors.black38 ,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? darkblue : Colors.transparent,
            )

          ],
        ),
      ),
    );
  }
}
