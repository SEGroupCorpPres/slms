import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'components/body.dart';

class LogInPage extends StatelessWidget {
  static String routName = '/log_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Body(),
    );
  }
}
