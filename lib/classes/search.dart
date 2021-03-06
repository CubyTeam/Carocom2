import 'package:carocom/constant/color.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate{
  final cars = [
    'BMW',
    'Toyota',
    'Tesla',
    'Ford',
    'Fiat',
    'BMW',
    'Toyota',
    'Testa',
    'Ford',
    'Fiat',
  ];
  final recentcars = [
    'Toyota',
    'Tesla',
    'Ford',
    'Fiat',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear),
        onPressed: (){
          query = "";
        }),
    ];


  }

  @override
  Widget buildLeading(BuildContext context) {
   return IconButton(
       icon: AnimatedIcon(
         icon:AnimatedIcons.menu_arrow,
         progress: transitionAnimation,
       ),
       onPressed: (){
         Navigator.of(context).pop();
       });
  }

  @override
  Widget buildResults(BuildContext context) {
   return Container(

   );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentcars:cars.where((p) => p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: (){
        showResults(
            context
        );
      },
      leading: Icon(Icons.directions_car_sharp),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
          children: [
            TextSpan(
          text: suggestionList[index].substring(query.length),
              style:
                TextStyle(
                  color: Colors.grey,
                )
      )
          ]


      )),
    ),
      itemCount: suggestionList.length,
    );
  }



  
}