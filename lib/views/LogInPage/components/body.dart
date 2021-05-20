import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../localization_service.dart';
import 'drop_down_menu.dart';
import 'form.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String lang;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lang = LocalizationService().getCurrentLang();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
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
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
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
                              DropdownSearchable(),
                              SizedBox(height: 30.0 / 812.0 * _height),
                              SignInForm(),
                            ],
                          ),
                        ),
                        SizedBox(height: (200.0 / 812.0) * _height),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Language',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' '),
                                new DropdownButton(
                                  items: LocalizationService.langs.map(
                                    (String value){
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }
                                  ).toList(),
                                  value: this.lang,
                                  underline: Container(color: Colors.transparent),
                                  isExpanded: false,
                                  onChanged: (newVal) {
                                    setState((){
                                      this.lang = newVal;
                                      LocalizationService().changeLocale(newVal);
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        )
                      ],
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

