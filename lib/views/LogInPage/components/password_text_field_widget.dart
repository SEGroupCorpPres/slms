import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  final String hintText;
  final String labelText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;
  PasswordTextFieldWidget({
    Key key,
    this.hintText,
    this.labelText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureText,
    this.onChanged
  }) : super(key: key);
  @override
  _PasswordTextFieldWidgetState createState() =>  _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget>{

  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidate: false,
      validator: (String value){
        if(value.isEmpty){
          return 'Password can\'t be empty';
        }
        return null ;
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontSize: 15,
          color: Colors.green,
        ),
        prefixIcon: Icon(
          widget.prefixIconData,
          size: 18,
          color: Color(0xFF2AA1C2),
        ),
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
              _secureText ? Icons.security : Icons.remove_red_eye_outlined
          ),
          onPressed: (){
            setState(() {
              _secureText = !_secureText;
            });
          },
        )
      ),
      obscureText: _secureText,
    );
  }
}
