import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:slms/routes.dart';
import 'package:slms/section/parent_section/ChildrenPage/children_page.dart';
import 'package:slms/section/parent_section/ChildrenPage/components/expansion_panel.dart';
import 'package:slms/section/parent_section/ChildrenPage/components/profil_page.dart';
import 'package:slms/views/about_page.dart';
import 'localization_service.dart';
import 'theme.dart';

import 'views/Intro/Intro.dart';
import 'views/HomePage/home.dart';
import 'views/LogInPage/login_page.dart';

void main() async{
  // ignore: unnecessary_statements
  WidgetsFlutterBinding.ensureInitialized;
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalizationService(),
      locale: LocalizationService().getCurrentLocale(),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'SLMS',
      theme: theme(),
      home: Intro(),
      routes: routes,
    );
  }
}

