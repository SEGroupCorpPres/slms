import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'profil_page.dart';

class ListExpansion extends StatefulWidget {
  @override
  _ListExpansionState createState() => _ListExpansionState();
}

class _ListExpansionState extends State<ListExpansion> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ExpansionTile(
          title: Text('O\'rinov Sulaymon'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.arrow_drop_down_circle_outlined),
          initiallyExpanded: false,
          children: <Widget>[
            ProfilPage(),
          ],
          // backgroundColor: Colors.black,
        ),
    );
  }
}




