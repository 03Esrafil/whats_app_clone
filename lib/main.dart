import 'package:flutter/material.dart';
import 'package:whats_app_clone/whats_app/presentation/pages/Home/homePages.dart';

void main() {
  runApp(MaterialApp(
    title: 'PAEM',
    theme: ThemeData(primarySwatch: Colors.blue ),
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

