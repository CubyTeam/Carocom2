import 'package:carocom/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserSettingUi extends StatelessWidget {
  const UserSettingUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: accentcolork,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Editesetting(),
    );
  }
}


class Editesetting extends StatefulWidget {
  const Editesetting({Key? key}) : super(key: key);

  @override
  _EditesettingState createState() => _EditesettingState();
}

class _EditesettingState extends State<Editesetting> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 16,top: 25,right: 16),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text('Edite Profile',
                style: TextStyle(fontSize: 25, fontWeight:  FontWeight.w500) ,
              ),
              SizedBox(height: 15,),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width:130 ,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4,color: Theme.of(context).scaffoldBackgroundColor,),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2, blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          )
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.8,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2, blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            ),],
                          color: accentcolork,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.edit_outlined,
                            color: Colors.white,),
                          onPressed: () {  },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              buildTextField('Full Name',"Hamid Serbata",false),
              buildTextField('E-mail',"hamidserbata@gmail.com",false),
              buildTextField('Password',"**********",true),
              buildTextField('Location',"Casablanca",false),
             SizedBox(height: 100,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 OutlineButton(
                   padding: EdgeInsets.symmetric(horizontal: 50),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
                     onPressed: (){

                     },
                 child:Text(
                   'CANSEL',
                   style: TextStyle(
                     fontSize: 14,
                     letterSpacing: 2.2,
                     color: Colors.black,
                   ),
                 ),),
                 RaisedButton(
                   padding: EdgeInsets.symmetric(horizontal: 50),
                   color: accentcolork,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
                   onPressed: (){

                   },
                   child:Text(
                     'SAVE',
                     style: TextStyle(
                       fontSize: 14,
                       letterSpacing: 2.2,
                       color: Colors.black,
                     ),
                   ),),
               ],
             )
            ],
          ),
        ),

      ),
    );
  }

  Widget buildTextField(String labelIext,String placeholder,bool isPassword) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPassword ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPassword ? IconButton(
            onPressed: (){
              setState((){
                showPassword = !showPassword;
              });
            },
            icon: Icon(Icons.remove_red_eye_outlined,
              color: Colors.grey,),
          ): null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelIext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),

        ),
      ),
    );
  }
}


