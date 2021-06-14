import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


DataColumn buildDataColumn({String label}){
  return DataColumn(
    label: Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

DataRow buildDataRow({String name, int quantityOfBook, int costOfAllBooks, IconData icon, Color color}){
  return DataRow(
    cells: <DataCell>[
      DataCell(Text(name)),
      DataCell(Text(quantityOfBook.toString())),
      DataCell(Text(costOfAllBooks.toString())),
      DataCell(Icon(icon,color: color)),
    ],
  );
}