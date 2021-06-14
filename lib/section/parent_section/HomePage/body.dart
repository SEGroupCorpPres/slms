import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slms/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:slms/constants.dart';
import 'package:slms/localization_service.dart';
import 'package:get/get.dart';

import 'data_element.dart';

class ParentHomePageBody extends StatefulWidget with NavigationStates {
  @override
  _ParentHomePageBodyState createState() => _ParentHomePageBodyState();
}

class _ParentHomePageBodyState extends State<ParentHomePageBody> {
  String lang;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lang = LocalizationService().getCurrentLang();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 50,
                child: Center(child: Text('Asosiy sahifa',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),)),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 20,
                    dataTextStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    showBottomBorder: true,
                    columns: <DataColumn>[
                      buildDataColumn(label: 'Ismi'),
                      buildDataColumn(label: 'Kitoblar soni'),
                      buildDataColumn(label: 'Ijara kitoblar umumiy narxi'),
                      buildDataColumn(label: 'To\'lov holati'),
                    ],
                    rows: <DataRow>[
                      buildDataRow(
                        name: 'Yo\'ldoshev Jasurbek',
                        quantityOfBook: 13,
                        costOfAllBooks: 150000,
                        icon: Icons.check_circle,
                        color: kSuccesColor
                      ),
                      buildDataRow(
                        name: 'Yo\'dosheva Zilola',
                        quantityOfBook: 13,
                        costOfAllBooks: 150000,
                        icon: Icons.cancel,
                        color: kDangerColor
                      ),
                      buildDataRow(
                        name: 'Raxmonberganov Boboxon',
                        quantityOfBook: 16,
                        costOfAllBooks: 100000,
                        icon: Icons.check_circle,
                        color: kSuccesColor
                      ),
                      buildDataRow(
                        name: 'Raxmonberganov Amirxon',
                        quantityOfBook: 15,
                        costOfAllBooks: 120000,
                        icon: Icons.check_circle,
                        color: kSuccesColor
                      ),
                      buildDataRow(
                        name: 'O\'rinov Safarmurod',
                        quantityOfBook: 20,
                        costOfAllBooks: 200000,
                        icon: Icons.cancel,
                        color: kDangerColor
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
