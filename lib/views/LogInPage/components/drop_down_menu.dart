import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DropDownMenu extends StatefulWidget {
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String valueChoose;
  List listItem = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        width: 340.0,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFA3BFC2),
              width: 2,
            ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: DropdownButton(
              hint: Text('School'),
              dropdownColor: Colors.white,
              icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 30
              ),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              underline: SizedBox(),
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
        ),
      ),
    );
  }
}
