import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';

class HelpPage extends StatefulWidget with NavigationStates{
  final String title;
  HelpPage({Key key, this.title}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Center(
            child: Text(
              'Saxifa hozircha mavjud emas',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
