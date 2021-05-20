import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';
class PaymentPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'PaymentPage',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}