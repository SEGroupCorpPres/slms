import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';

class ParentHomePageBody extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parent Home Page',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          fontSize: 28,
        ),
      ),
    );
  }
}