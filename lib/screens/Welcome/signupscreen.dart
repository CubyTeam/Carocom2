import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carocom/Services/AuthHelper.dart';
import 'package:carocom/constant/color.dart';
import 'package:carocom/screens/Welcome/LoginScreen.dart';
import 'package:carocom/screens/homepage.dart';
import 'package:carocom/widget/CustumTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpp extends StatefulWidget {
  const SignUpp({Key? key}) : super(key: key);
  static String id= 'SignUp';

  @override
  _SignUppState createState() => _SignUppState();
}

class _SignUppState extends State<SignUpp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _name = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {




    //   Signup( ) async{
    //     var formdata = formKey.currentState;
    //     if(formdata!.validate()){
    //     try {
    //       UserCredential userCredential =
    //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //         email: myemail,
    //         password: mypassword,
    //       );
    //     } on FirebaseAuthException catch (e) {
    //       if (e.code == 'weak-password') {
    //         print('The password provided is too weak.');
    //       } else if (e.code == 'email-already-in-use') {
    //         print('The account already exists for that email.');
    //       }
    //     } catch (e) {
    //       print(e);
    //     }
    //   }else{
    //       print('Not Valid');
    //     }
    // }


    FirebaseAuth auth = FirebaseAuth.instance;
    Size size = MediaQuery
        .of(context)
        .size;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return  Scaffold(
        body: Container(
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Container(
                  //padding: EdgeInsets.only(top: 10 ),
                  child: Container(
                    height: height * .4,
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
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),

                    child: CustomTextField(
                      textEditingController: _name,
                      hint: 'Enter your name',
                      icon: Icons.account_circle_outlined,
                    )
                ),
                SizedBox(
                  height: height * .01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),

                  child: CustomTextField(
                    textEditingController: _email,
                    hint: 'Enter your email',
                    icon: Icons.email_outlined,
                  ),
                ),
                SizedBox(
                  height: height * .01,
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
                  height: height * .02,
                ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 50,
                      color: accentcolork,
                      child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            letterSpacing: 2.2,

                          )
                      ),
                      onPressed: () async
                      {
                       await  FireAuth
                            .registerUsingEmailPassword(email: _email.text, password: _password.text, name: _name.text)
                            .then((result) async{
                          if (result != null) {
                            await Navigator.pushReplacementNamed(context, LoginScreen.id);


                              }
                      else {
                            AwesomeDialog(
                                context: context,
                                dialogType: DialogType.ERROR,
                                animType: AnimType.RIGHSLIDE,
                                headerAnimationLoop: true,
                                title: 'Error',
                                desc:
                                'Make Things right please',
                                btnOkOnPress: () {},
                                btnOkIcon: Icons.cancel,
                                btnOkColor: Colors.red)
                              ..show();
                          }
                        });
                      }
                  ),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                      style: TextStyle(
                        color: darkblue,
                        fontSize: 16,
                      ),),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, LoginScreen.id);
                      },
                      child: Text('Login',
                        style: TextStyle(
                          color: accentcolork,
                          fontSize: 19,),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
