import 'dart:html';

import 'package:flutter/material.dart';

class FoodlistUI extends StatefulWidget {
  const FoodlistUI({ Key? key }) : super(key: key);

  @override
  _FoodlistUIState createState() => _FoodlistUIState();
}

class _FoodlistUIState extends State<FoodlistUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE72A0D),
        title: Text(
          'สายด่วนชวนกิน',
        ),
        centerTitle: true,
      ),
      
    );
  }
}