import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:animations/animations.dart';

import 'package:slms/views/LogInPage/login_page.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OpenContainer(
                closedBuilder: (_, openContainer){
                  return Container(
                    height: (100 / 812.0) * _height,
                    width: (100 / 375.0) * _width,
                    child: Center(
                      child: Image.asset(
                        'assets/icons/128.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                  );
                },
                openColor: Colors.white,
                closedElevation: 20,
                closedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                transitionDuration: Duration(milliseconds: 700),
                openBuilder: (_, closeContainer){
                  return SecondScreen();
                },
            ),
          ],
        ),
      ),
    );
  }
}
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _a = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 700), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(Duration(milliseconds: 2000),() {
      setState(() {
        Navigator.of(context).pushReplacement(SlideTransitionAnimation(LogInPage()));
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedContainer(
              duration: Duration(
                milliseconds: 2000,
              ),
            curve: Curves.fastLinearToSlowEaseIn,
            width: _a ? _width : 0,
            height: _height,
            color: Colors.black,
          ),
          Center(
            child: Text(
              'App\u005c`s Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SlideTransitionAnimation extends PageRouteBuilder {
  final Widget page;
  SlideTransitionAnimation(this.page)
      : super (
    pageBuilder: (contex, animation, anotherAimation) => page,
    transitionDuration: Duration(milliseconds: 2000),
    transitionsBuilder: (context, animation, anotherAnimation, child){
      animation = CurvedAnimation(
        curve: Curves.fastLinearToSlowEaseIn,
        parent: animation,
      );
      return SlideTransition(
        position: Tween(
            begin: Offset(1.0, 0.0),
            end: Offset(0.0, 0.0))
            .animate(animation),
        textDirection: TextDirection.rtl,
        child: page,
      );
    }
  );
}



