import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slms/views/HomePage/home.dart';

import 'full_name_text_field_widget.dart';
import 'password_text_field_widget.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            FullNameTextFieldWidget(
              hintText: 'Full Name',
              labelText: 'Full Name',
              obscureText: false,
              prefixIconData: Icons.person,
            ),
            SizedBox(height: 10),
            PasswordTextFieldWidget(
              hintText: 'Password',
              labelText: 'Password',
              obscureText: true,
              prefixIconData: Icons.lock,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool value) {
                    setState(() {
                      checkBoxValue = value;
                    });
                  },
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'forgot password ?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: (10 / 812.0) * _height),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: (300.0 / 812.0) * _height,
                height: (50.0 / 812.0) * _width,
                child: Center(
                  child: Text(
                    'Sign In'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
