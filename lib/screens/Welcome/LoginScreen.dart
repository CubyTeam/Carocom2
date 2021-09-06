
import 'package:carocom/Services/AuthHelper.dart';
import 'package:carocom/constant/color.dart';
import 'package:carocom/screens/MainScreen.dart';
import 'package:carocom/screens/Welcome/signupscreen.dart';
import 'package:carocom/widget/CustumTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';



class LoginScreen extends StatelessWidget {


  static String id= 'LoginScreen';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _firstName = new TextEditingController();
  final TextEditingController _lastName = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
    backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
               //padding: EdgeInsets.only(top: 10 ),
              child: Container(
                height: height*.4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(


                        image: AssetImage('assets/images/probleme.png'),
                    ),


                  ],
                ),
              ),
                ),
            SizedBox(
              height: height*.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),

              child: CustomTextField(
                textEditingController: _email,

                hint:'Enter your email',
                icon: Icons.email_outlined,
              ),
            ),
            SizedBox(
              height: height*.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),

              child: CustomTextField(
                textEditingController: _password,
                hint: 'Enter your passowrd',
                icon: Icons.lock_outline,
              ),

            ),
            SizedBox(
              height: height*.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:90 ),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 50,
                color: accentcolork,
                child:Text(
                  'LOGIN',
                      style:TextStyle(
                        color: Color(0xff2c2b3f),
                        fontSize: 24,
                        letterSpacing: 2.2,

                      )
                ) ,

                  onPressed: () async {
            if (formKey.currentState!.validate()) {
            User? user = await FireAuth.signInUsingEmailPassword(
            email: _email.text,
            password: _password.text, context: context,
            );
            if (user != null) {
              await Navigator.pushReplacementNamed(context,
                  'Main');

            }
            }

              },
              ),
            ),
            SizedBox(
              height: height*.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account? ',
                style: TextStyle(
                  color: darkblue,
                  fontSize: 16,
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignUpp.id);
                  },
                  child: Text('SignUp',
                     style: TextStyle(
                   color: accentcolork,
                   fontSize: 19 ,),),
                ),
              ],
            )
          ],
        ),
      ),

    );

  }



  }



