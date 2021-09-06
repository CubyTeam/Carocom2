

import 'package:carocom/Services/validator.dart';
import 'package:carocom/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  late final TextEditingController textEditingController;



  CustomTextField({required this.icon,required this.hint,required this.textEditingController});
  _errorMessage(String str)
  {
    switch(hint)
    {
      case 'Enter your name': return 'Name';
      case 'Enter your email': return 'email';
      case 'Enter your passowrd': return 'passowrd';

    }
  }


  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: textEditingController,
       autofocus: true,


      validator: (value)
      {
        // Validator.validate(email: value);
        if(value!.isEmpty )
        {
          return _errorMessage(hint);
        }

      },
      cursorColor: darkblue,
       obscureText: hint =='Enter your passowrd' ? true: false,

      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: darkblue,
        ),
        filled: true,
        fillColor: Color(0xffE8F6EF),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            )
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            )
        ),
      ),
    );
  }
}
