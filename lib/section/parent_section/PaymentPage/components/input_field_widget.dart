import'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InputFieldWidget extends StatelessWidget {
  final String labelText;
  final IconData prefixIconData;
  final bool obscureText;
  final Function onChanged;

  InputFieldWidget({
    Key key,
    this.prefixIconData,
    this.obscureText,
    this.onChanged,
    this.labelText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidate: false,
      validator: (String value){
        if(value.isEmpty){
          return 'Full Name can\'t be empty';
        }
        return null ;
      },
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 15,
          color: Colors.lightBlueAccent,
        ),
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Color(0xFF2AA1C2),
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
