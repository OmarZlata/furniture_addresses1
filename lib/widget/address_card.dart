import 'package:course/core/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: 127,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(

        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15,),
                Text(
                  "Bruno Fernandes",
                  style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),

                ),
                Spacer(),
                Container(
                  height: 24,
                    width: 24,

                    child:
                    InkWell(
                      onTap: () {

                      },
                      child: Image.asset(
                          "assets/edit.png",
                      ),
                    ),
                ),
              ],
            ),
            SizedBox(height: 7,),
            Divider(),
            SizedBox(height: 7,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                  "    25 rue Robert Latouche ,Nice, 06200,Cote",
                style: TextStyle(
                    color: AppColor.darkgrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                  ),
            ),
            SizedBox(height:10 ,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                  "    D'azur, France",
                style: TextStyle(
                    color: AppColor.darkgrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    )
    ;
  }
}
