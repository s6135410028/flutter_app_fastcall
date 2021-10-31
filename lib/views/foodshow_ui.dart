import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodshowUI extends StatefulWidget {
  //สร้างตัวแปรที่จะเก็บค่าส่งมาจากหน้า FoodlistUI
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';

  //คอนสตรักเตอร์ เอาไว้รัยค่าท่ีส่งมาจากหน้า FoodlistUI กำหนดให้ตัวแปรข้างบน
  FoodshowUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
  }) : super(key: key);

  @override
  _FoodshowUIState createState() => _FoodshowUIState();
}

class _FoodshowUIState extends State<FoodshowUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Color(0xFFE72A0D),
        title: Text(
          'รายละเอียดร้านค้า',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 180.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 100.0,
                child: Card(
                  color: Colors.deepOrange[200],
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                            ),
                            Text(
                              ' Name:   ' + widget.name,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globeAsia,
                            ),
                            Text(
                              ' Website:   ' + widget.website,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.desktop,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                            ),
                            Text(
                              ' Facebook:   ' + widget.facebook,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobileAlt,
                            ),
                            Text(
                              ' Mobile:   ' + widget.mobile,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed:(){},
                    icon: Icon(
                      FontAwesomeIcons.globeAsia,
                    ),
                    label:Text(
                      'เปิดเว็บ',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      fixedSize: Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed:(){},
                    icon: Icon(
                      FontAwesomeIcons.phone,
                    ),
                    label:Text(
                      'โทรเลย',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      fixedSize: Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed:(){},
                    icon: Icon(
                      FontAwesomeIcons.mapMarked,
                    ),
                    label:Text(
                      'พิกัด',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      fixedSize: Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
