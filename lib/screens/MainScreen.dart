import 'package:carocom/classes/search.dart';
import 'package:carocom/constant/color.dart';
import 'package:carocom/screens/cart.dart';
import 'package:carocom/screens/settingUI/settingUI.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Product/addproduct.dart';
import 'category.dart';
import 'homepage.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int selectedIndex = 0;
  final screen = [
    HomePage(),
    categoryPage(),
    CartShop(),
    SettingUI(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkblue,
        title:  Text('caro.com',
          style: TextStyle(color: accentcolork,
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search_rounded), color: accentcolork,
            iconSize: 34,
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          IconButton(
            icon:Icon(Icons.add_business_rounded), color: accentcolork,
            iconSize: 34,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => AddProduct())
              );
            },
          ),
        ],

      ),


        bottomNavigationBar: CurvedNavigationBar(

          index: selectedIndex,
          height: 55,
          items: <Widget>[
            Icon(Icons.home_outlined,color: accentcolork,),
            Icon(Icons.category_outlined,color: accentcolork,),
            Icon(Icons.shopping_cart_outlined,color: accentcolork,),
            Icon(Icons.account_circle_outlined,color: accentcolork,),

          ],
          color: darkblue,
          buttonBackgroundColor: darkblue,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              selectedIndex = index ;
            });
          },
          letIndexChange: (index) => true,

        ),
        body: screen[selectedIndex],
    );
  }
}

