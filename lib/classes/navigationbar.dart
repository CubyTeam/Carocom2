import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        items: <Widget>[
          IconButton(icon:Icon(Icons.home_outlined), onPressed: (){
          }, ),
          IconButton(icon:Icon(Icons.category_outlined), onPressed: (){
          }, ),
          IconButton(icon:Icon(Icons.shopping_cart_outlined), onPressed: (){
          }, ),
          IconButton(icon:Icon(Icons.account_circle_outlined), onPressed: (){

          }, ),

        ],

      ),



    );
  }
}
