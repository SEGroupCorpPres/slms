import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'drop_down_menu.dart';
import 'form.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: kBodyColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            height: (200.0 / 812.0) *  _height,
            child: Center(
              child: Text(
                'School Library Management System',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: (580.0 / 812.0) *  _height,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)
                )
            ),
            child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: <Widget>[
                          DropDownMenu(),
                          SizedBox(height: 30.0 / 812.0 * _height),
                          SignInForm(),
                        ],
                      ),
                    ),
                    SizedBox(height: (150.0 / 812.0) * _height),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset(
                                'assets/images/logo.png',
                              width: (50 / 375.0) * _width,
                              height: (30 / 812.0) * _height,
                            ),
                            Image.asset(
                                'assets/images/S.E.Group_logo.png',
                                width: (80 / 375.0) * _width,
                                height: (40 / 812.0) * _height,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            FlatButton(
                              onPressed: (){},
                              child: Image.asset('assets/icons/uzbekistan.png', height: (20 / 812.0) * _height,),
                              minWidth: 20,
                            ),
                            FlatButton(
                              onPressed: (){},
                              child: Image.asset('assets/icons/russia.png', height: (20 / 812.0) * _height,),
                              minWidth: 20,
                            ),
                            FlatButton(
                              onPressed: (){},
                              child: Image.asset('assets/icons/united kingdom.png',  height: (20 / 812.0) * _height,),
                              minWidth: 20,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

