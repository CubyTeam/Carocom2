import 'package:carocom/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: productinformation(),
    );
  }
}
class productinformation extends StatefulWidget {
  const productinformation({Key? key}) : super(key: key);

  @override
  _productinformationState createState() => _productinformationState();
}

class _productinformationState extends State<productinformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkblue,
      body: Container(
        clipBehavior: Clip.none,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height*48,
                  width: size.width,
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight:  Radius.circular(40),
                        ),
                        boxShadow:[ BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(0.0,2.0),
                            blurRadius: 6.0
                        )]
                    ),

                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight:  Radius.circular(40),
                        ),
                        child: Image(image: AssetImage('images/car4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: (){Navigator.of(context).pop();},
                          icon: Icon(Icons.arrow_back,
                          color: accentcolork,))
                    ],
                  ),

              ],
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Volkswagen Group',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold

                    ),),
                  Positioned(
                    right: 20,
                    top: 30 ,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart,
                          color: accentcolork,
                        ),
                        onPressed: () {
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(

              padding:  const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(

                children: [
                  Icon(Icons.location_on,
                    color: accentcolork,
                    size: 18,),
                  SizedBox(width: 2,),
                  Text('Casablanca',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 100,),
                  Icon(Icons.directions_car_outlined,
                    color: accentcolork,
                    size: 18,),
                  SizedBox(width: 2,),
                  Text('Dacia',
                    style: TextStyle(color: Colors.white),
                  ),

                ],
              ),
            ),



              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Container(
                        child: Text('Description',
                        style: TextStyle(color: Colors.white,
                        fontSize: 18,),
                         ),),
                  ],
                ),
              ),


            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),

              child: Expanded(
                child: Container(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque gravida diam pulvinar lobortis  Vivamus et elit sed libero tempor tempus a at turpis. Cras eu velit non tortor vestibulum laoreet.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Positioned(
                    right: 20,
                    top: 30 ,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: Icon(Icons.favorite_rounded,
                          color: accentcolork,
                        ),
                        onPressed: () {
                        },
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    color: accentcolork,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child:Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2.2,
                        color: Colors.black,
                      ),
                    ),),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
