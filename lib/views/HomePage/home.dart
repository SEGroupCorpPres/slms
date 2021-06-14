import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';

import 'package:slms/components/side_bar.dart';
import 'package:slms/section/parent_section/HomePage/body.dart';
import 'package:slms/section/teacher_section/HomePage/body.dart';
import 'package:slms/views/LogInPage/components/body.dart';

class HomePage extends StatelessWidget{
  static final isParent = Body();
  static final isBibliotiker = Body();
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    BodynavigationBuilder(){
      if(isParent.isParent == true) {
        return NavigationBloc(ParentHomePageBody());
      }
      if(isBibliotiker.isBibliotiker == true){
        return NavigationBloc(BibliotikerHomePageBody());
      }
      if(isParent.isParent == true && isBibliotiker.isBibliotiker == true){
        return NavigationBloc(ParentHomePageBody());
      }
    }
    return Scaffold(
        body: BlocProvider<NavigationBloc>(
          // ignore: missing_return
          create: (context) => BodynavigationBuilder(),
          child: Stack(
            children: <Widget>[
              BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationState){
                  return navigationState as Widget;
                },
              ),
              SideBar(),
            ],
          ),
        ), 
    );
  }
}
