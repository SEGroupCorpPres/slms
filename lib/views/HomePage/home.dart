import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';

import 'package:slms/components/side_bar.dart';
import 'package:slms/section/parent_section/HomePage/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(ParentHomePageBody()),
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
