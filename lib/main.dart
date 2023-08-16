import 'package:course/views/Shipping_address.dart';
import 'package:course/views/homeView.dart';
import 'package:course/widget/address_card.dart';
import 'package:course/widget/card_gridniew.dart';
import 'package:course/widget/icons_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShippingAdressesView(),
    );
  }
}
