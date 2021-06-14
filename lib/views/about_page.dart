import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';

class AboutPage extends StatefulWidget with NavigationStates{
  final String title;
  AboutPage({Key key, this.title}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      title: Center(child: Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),)),
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.blue,
      body: Container(
        height: (_height - appBar.preferredSize.height),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.20,),
                Container(
                  width: double.infinity,
                  child: Text(
                      'Maktab Kutubxona Boshqaruv Tizimi',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.white,
                  thickness: 1,
                  endIndent: 8,
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: Text(
                      'Versiya',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    '1.0.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Oxirgi yangilanish',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    DateTime.now().toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Ilova A1Tech Group \"Mustafo Software\" LLC tomonidan 11.07.2021 da ishlab chiqarildi',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Ilova Mualliflik huquqi asosida himoyalangan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
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
