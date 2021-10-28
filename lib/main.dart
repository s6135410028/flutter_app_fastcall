import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/views/foodlist_ui.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodlistUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
  
}