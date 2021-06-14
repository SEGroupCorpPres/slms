import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'expansion_panel.dart';

class Body extends StatefulWidget {
  final String title;
  Body({Key key, this.title}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      title: Center(child: Text(widget.title, style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),)),
    );
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
          body: ListView(
            addAutomaticKeepAlives: true,
            addRepaintBoundaries: true,
            primary: true,
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            children: [
              ListExpansion(),
              ListExpansion(),
              ListExpansion(),
              ListExpansion(),
            ],
          )
      ),
    );
  }
}

