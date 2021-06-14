import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_custom_credit_card_ui/flutter_custom_credit_card_ui.dart";

import 'input_field_widget.dart';

class Body extends StatefulWidget {
  final String title;
  Body({Key key, this.title}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: Center(child: Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),)),
    );
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: (_height - appBar.preferredSize.height) * 0.3,
                  child: CustomCreditCard(
                    cardNumber: "8600312928577846",
                    cardHolder: "O\'rinov Sulaymon",
                    year: _dateTime.year,
                    month: _dateTime.month,
                    bgColor: Colors.green,
                  ),
                ),
                Container(
                  height: (_height - appBar.preferredSize.height) * 0.67,
                  decoration: BoxDecoration(
                      color: Color(0xFF262AAA),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25)
                      ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InputFieldWidget(key: widget.key, labelText: 'Maktab', prefixIconData: Icons.school,),
                            SizedBox(height: 20,),
                            InputFieldWidget(key: widget.key, labelText: 'Sinf', prefixIconData: Icons.group,),
                            SizedBox(height: 20,),
                            InputFieldWidget(key: widget.key, labelText: 'Toliq ismi', prefixIconData: Icons.account_circle,),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      SizedBox(height: (_height - appBar.preferredSize.height) * 0.1),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RaisedButton(
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => PayingPage(),
                                ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: (300.0 / 812.0) * _height,
                            height: (50.0 / 812.0) * _width,
                            child: Center(
                              child: Text(
                                'Keyingi'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PayingPage extends StatelessWidget {
  const PayingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // SizedBox(height: _height * 0.25,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('21-son Umumta\'lim maktabi 4 B - sinf o\'quvchisi Yo\'doshev Jasurbek', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                  InputFieldWidget(key: key, labelText: 'To\'lov miqdori', prefixIconData: Icons.money,),
                  SizedBox(height: _height * 0.05,),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: (300.0 / 812.0) * _height,
                      height: (50.0 / 812.0) * _width,
                      child: Center(
                        child: Text(
                          'To\'lash'.toUpperCase(),
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
          ),
        ),
      ),
    );
  }
}


