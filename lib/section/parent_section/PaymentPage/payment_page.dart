import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';

import 'components/body.dart';
class PaymentPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Body(title: 'To\'lov sahifasi',),
    );
  }
}