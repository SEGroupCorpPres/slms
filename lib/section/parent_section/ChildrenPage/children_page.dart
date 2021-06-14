 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:slms/section/parent_section/ChildrenPage/components/expansion_panel.dart';

import 'components/body.dart';
 
 class ChildrenPage extends StatefulWidget with NavigationStates{
  @override
  _ChildrenPageState createState() => _ChildrenPageState();
}

class _ChildrenPageState extends State<ChildrenPage> {
   @override
   Widget build(BuildContext context) {
     return Body(title: 'Farzandlar',);
   }
}
