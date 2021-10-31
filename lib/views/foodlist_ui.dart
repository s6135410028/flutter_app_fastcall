import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/fooddata.dart';
import 'package:flutter_app_fastcall/views/foodshow_ui.dart';

class FoodlistUI extends StatefulWidget {
  const FoodlistUI({Key? key}) : super(key: key);

  @override
  _FoodlistUIState createState() => _FoodlistUIState();
}

class _FoodlistUIState extends State<FoodlistUI> {
  //โค้ดข้อมูลร้านอาหารซึ่งเกี่ยวข้อง
  List<Fooddata> fooddata = [
    Fooddata(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
//พิกัด
    ),
    Fooddata(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
    ),
    Fooddata(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
    ),
    Fooddata(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
    ),
    Fooddata(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
    ),
    Fooddata(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
    ),
    Fooddata(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
    ),
    Fooddata(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
    ),
    Fooddata(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
    ),
    Fooddata(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
    ),
    Fooddata(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
    ),
    Fooddata(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
    ),
    Fooddata(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
    ),
    Fooddata(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
    ),
    Fooddata(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
    ),
    Fooddata(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
    ),
    Fooddata(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
    ),
  ];

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
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 10.0,
            color: Colors.deepOrange[200],
          );
        },
        //กำหนดจำนวนรายการใน Listview
        itemCount: fooddata.length,
        //สร้างแต่ละรายการของ Listview
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              //กดแล้วให้ไปหน้าจอ FoodshowUI
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FoodshowUI(
                      name: fooddata[index].name,
                      website: fooddata[index].website,
                      facebook: fooddata[index].facebook,
                      mobile: fooddata[index].mobile,
                      image: fooddata[index].image,
                    );
                  },
                ),
              );
            },
            leading: Image.asset(
              'assets/images/' + fooddata[index].image,
            ),
            title: Text(
              fooddata[index].name,
            ),
            subtitle: Text(
              fooddata[index].mobile,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.deepOrange,
            ),
          );
        },
      ),
    );
  }
}
