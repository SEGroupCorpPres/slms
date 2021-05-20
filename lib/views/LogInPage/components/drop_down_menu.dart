import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

// This class uses searchable dropdown package
// Link to it :  https://pub.dev/packages/searchable_dropdown

class DropdownSearchable extends StatefulWidget {
  static const routeName = '/DropdownSearchable';
  @override
  _DropdownSearchableState createState() => _DropdownSearchableState();
}

class _DropdownSearchableState extends State<DropdownSearchable> {
  String selectedValue;
  List<int> selectedItems;
  final List<DropdownMenuItem> items = [
    DropdownMenuItem(
      child: Text("Item1"),
      value: "Item1",
    ),
    DropdownMenuItem(
      child: Text("Item2"),
      value: "Item2",
    ),
    DropdownMenuItem(
      child: Text("Item3"),
      value: "Item3",
    ),
    DropdownMenuItem(
      child: Text("Item4"),
      value: "Item4",
    ),
    DropdownMenuItem(
      child: Text("Item5"),
      value: "Item5",
    ),
    DropdownMenuItem(
      child: Text("Item6"),
      value: "Item6",
    ),
    DropdownMenuItem(
      child: Text("Item7"),
      value: "Item7",
    ),
    DropdownMenuItem(
      child: Text("Item8"),
      value: "Item8",
    ),
    DropdownMenuItem(
      child: Text("Item9"),
      value: "Item9",
    ),
    DropdownMenuItem(
      child: Text("Item10"),
      value: "Item10",
    ),
  ];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
            //===============================
            //       Choose One Item
            //===============================
                  Container(
                    constraints: BoxConstraints(maxWidth: 250),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SearchableDropdown.single(
                          items: items,
                          value: selectedValue,
                          hint: "Select one",
                          searchHint: "Select one",
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          isExpanded: true,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
    );
  }
}