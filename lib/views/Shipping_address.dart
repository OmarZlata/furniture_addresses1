import 'package:course/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/address_card.dart';

class ShippingAdressesView extends StatefulWidget {
  const ShippingAdressesView({Key? key}) : super(key: key);

  @override
  State<ShippingAdressesView> createState() => _ShippingAdressesViewState();
}

class _ShippingAdressesViewState extends State<ShippingAdressesView> {
  bool selectedValue1 = false;
  bool selectedValue2 = false;
  bool selectedValue3 = false;
  void toggleCheckbox1(bool? value) {
    setState(() {
      selectedValue1 = value!;

    });
  }
  void toggleCheckbox2(bool? value) {
    setState(() {
      selectedValue2 = value!;

    });
  }
  void toggleCheckbox3(bool? value) {
    setState(() {
      selectedValue3 = value!;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColor.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Shipping address",
          style: TextStyle(color: AppColor.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: AppColor.black,
                  value: selectedValue1,
                  onChanged: toggleCheckbox1,
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18
                  ),
                ),
              ],
            ),
            AddressCard(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColor.black,
                  value: selectedValue2,
                  onChanged: toggleCheckbox2,
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18
                  ),
                ),
              ],
            ),
            AddressCard(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColor.black,
                  value: selectedValue3,
                  onChanged: toggleCheckbox3,
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 18
                  ),
                ),
              ],
            ),
            AddressCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColor.black,
        ),
        backgroundColor: AppColor.white,
      ),
    );
  }
}
