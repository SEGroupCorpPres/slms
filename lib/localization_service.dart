import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'lang/en_US.dart';
import 'lang/ru_RU.dart';
import 'lang/uz_UZ.dart';

class LocalizationService extends Translations{
  static final locale = Locale('en', 'US');
  static final fallBackLocale = Locale('en', 'US');
  static final langs = ['English', 'Russian', 'Uzbek'];
  static final locales = [
    Locale('en', 'US'),
    Locale('ru', 'Ru'),
    Locale('uz', 'UZ'),
  ];
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    'enUS': enUS,
    'ruRU': ruRU,
    'uzUZ': uzUZ,
  };
  void changeLocale(String lang){
    final locale = getLocaleFromLanguage(lang);
    final box = GetStorage();
    box.write('lang', lang);
    Get.updateLocale(locale);
  }
    
  Locale getLocaleFromLanguage(String lang) {
    for(int i=0; i< langs.length; i++){
      if(lang == langs[i]) return locales[i];
      }
      return Get.locale;
  }
  
  Locale getCurrentLocale() {
    final box = GetStorage();
    Locale defaultLocale;
    if(box.read('lang') != null){
      final locale = getLocaleFromLanguage(box.read('lang'));
      defaultLocale = locale;
    }
    else{
      defaultLocale = Locale('eng', 'US');
    }
    return defaultLocale;
  }
  String getCurrentLang() {
    final box = GetStorage();
    return box.read('lang') != null ? box.read('lang') : 'English';
  }
}