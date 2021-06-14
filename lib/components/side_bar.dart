import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';


import 'menu_item.dart';
import 'package:slms/views/LogInPage/components/body.dart';
class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
  StreamController<bool> isSideBarOpenedStreamController;
  Stream<bool> isSideBarOpenedStream;
  StreamSink<bool> isSideBarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);
  static final isParent = Body();
  static final isBibliotiker = Body();
  // ignore: non_constant_identifier_names
  BodySideBarBuilder(){
    if(isParent.isParent == true) {
      return buildParentSideBarMenuItems();
    }
    if(isBibliotiker.isBibliotiker == true){
      return buildBibliotikerSideBarMenuItems();
    }
    if(isParent.isParent == true && isBibliotiker.isBibliotiker == true){
      return buildParentAndBibliotikerSideBarMenuItems();
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    // TODO: implement dispose
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    if (isAnimationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : -_width,
          right: isSideBarOpenedAsync.data ? 0 : _width - 35,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  color: const Color(0xFF262AAA),
                  child: BodySideBarBuilder(),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      height: 110,
                      width: 35,
                      color: Color(0xFF262AAA),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Color(0xFF1BB5FD),
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  Column buildBibliotikerSideBarMenuItems(){
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        ListTile(
          title: Text(
            'O\'rinov Sulaymon',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          subtitle: Text(
            'Ota-Ona',
            style:
            TextStyle(color: Color(0xFF1BB5FD), fontSize: 20),
          ),
          leading: CircleAvatar(
            child: Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
            radius: 40,
          ),
        ),
        Divider(
          height: 65,
          thickness: 0.5,
          color: Colors.white.withOpacity(0.3),
          indent: 32,
          endIndent: 32,
        ),
        MenuItem(
          icon: Icons.home_outlined,
          title: 'Asosiy sahifa',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ParentHomePageClickedEvent);
          },
        ),
        MenuItem(
          icon: Icons.group_outlined,
          title: 'Farzandlar',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ChildrenPageClickedEvent);
          },
        ),
        MenuItem(
          icon: Icons.payment_outlined,
          title: 'To\'lov',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.PaymentPageClickedEvent);
          },
        ),
        Divider(
          height: 65,
          thickness: 0.5,
          color: Colors.white.withOpacity(0.3),
          indent: 32,
          endIndent: 32,
        ),
        MenuItem(
          icon: Icons.help,
          title: 'Yordam',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.HelpPageClickedEvent);
          },
        ),
        MenuItem(
          icon: Icons.error,
          title: 'Ilova haqida',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.AboutPageClickedEvent);
          },
        ),
        MenuItem(
          onTap: (){},
          icon: Icons.close,
          title: 'Chiqish',
        ),
      ],
    );
  }
  Column buildParentSideBarMenuItems(){
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        ListTile(
          title: Text(
            'O\'rinov Sulaymon',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          subtitle: Text(
            'Ota-Ona',
            style:
            TextStyle(color: Color(0xFF1BB5FD), fontSize: 20),
          ),
          leading: CircleAvatar(
            child: Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
            radius: 40,
          ),
        ),
        Divider(
          height: 65,
          thickness: 0.5,
          color: Colors.white.withOpacity(0.3),
          indent: 32,
          endIndent: 32,
        ),
        MenuItem(
          icon: Icons.home_outlined,
          title: 'Asosiy sahifa',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ParentHomePageClickedEvent);
          },
        ),
        Divider(
          height: 65,
          thickness: 0.5,
          color: Colors.white.withOpacity(0.3),
          indent: 32,
          endIndent: 32,
        ),
        MenuItem(
          icon: Icons.help,
          title: 'Yordam',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.HelpPageClickedEvent);
          },
        ),
        MenuItem(
          icon: Icons.error,
          title: 'Ilova haqida',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.AboutPageClickedEvent);
          },
        ),
        MenuItem(
          onTap: (){},
          icon: Icons.close,
          title: 'Chiqish',
        ),
      ],
    );
  }
  Column buildParentAndBibliotikerSideBarMenuItems(){
    return Column(
      children: <Widget>[
        SizedBox(height: 100),
        ListTile(
          title: Text(
            'O\'rinov Sulaymon',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          subtitle: Text(
            'Ota-Ona',
            style:
            TextStyle(color: Color(0xFF1BB5FD), fontSize: 20),
          ),
          leading: CircleAvatar(
            child: Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
            radius: 40,
          ),
        ),
        Divider(
          height: 65,
          thickness: 0.5,
          color: Colors.white.withOpacity(0.3),
          indent: 32,
          endIndent: 32,
        ),
        MenuItem(
          icon: Icons.home_outlined,
          title: 'Asosiy sahifa',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ParentHomePageClickedEvent);
          },
        ),
        Divider(
          height: 65,
          thickness: 0.5,
          color: Colors.white.withOpacity(0.3),
          indent: 32,
          endIndent: 32,
        ),
        MenuItem(
          icon: Icons.help,
          title: 'Yordam',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.HelpPageClickedEvent);
          },
        ),
        MenuItem(
          icon: Icons.error,
          title: 'Ilova haqida',
          onTap: () {
            onIconPressed();
            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.AboutPageClickedEvent);
          },
        ),
        MenuItem(
          onTap: (){},
          icon: Icons.close,
          title: 'Chiqish',
        ),
      ],
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
