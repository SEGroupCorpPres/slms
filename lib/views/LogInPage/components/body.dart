import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:slms/localization_service.dart';
import 'drop_down_menu.dart';
import 'form.dart';
import 'package:slms/constants.dart';

// ignore: must_be_immutable
class Body extends StatefulWidget {
  bool parent;
  bool bibliotiker;
  Body({
    Key key,
    this.parent,
    this.bibliotiker,
  }) : super(key: key,);
  bool get isParent{
    return parent;
  }
  bool get isBibliotiker{
    return bibliotiker;
  }
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
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: (200.0 / 812.0) *  _height,
                child: Center(
                  child: Text(
                    'Maktab Kutubxona Boshqaruv Tizimi',
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
                height: 0.75 *  _height,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35)
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: widget.bibliotiker,
                                        onChanged: (bool value) {
                                          setState(() {
                                            widget.bibliotiker = value;
                                          });
                                        },
                                      ),
                                      Text('Kutubxonachi'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: widget.parent,
                                        onChanged: (bool value) {
                                          setState(() {
                                            widget.parent = value;
                                          });
                                        },
                                      ),
                                      Text('Ota-Ona'),
                                    ],
                                  ),
                                ],
                              ),
                              // SizedBox(height: 30.0 / 812.0 * _height),
                              SignInForm(),
                            ],
                          ),
                        ),
                        // Text(
                        //   'hello_title'.tr,
                        //   style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
                        // ),
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
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.center,
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Text(
                            //       'Language',
                            //       style: TextStyle(
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //     Text(' '),
                            //     new DropdownButton(
                            //       items: LocalizationService.langs.map(
                            //         (String value){
                            //           return new DropdownMenuItem<String>(
                            //             value: value,
                            //             child: new Text(value),
                            //           );
                            //         }
                            //       ).toList(),
                            //       value: this.lang,
                            //       underline: Container(color: Colors.transparent),
                            //       isExpanded: false,
                            //       onChanged: (newVal) {
                            //         setState((){
                            //           this.lang = newVal;
                            //           LocalizationService().changeLocale(newVal);
                            //         });
                            //       },
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}



