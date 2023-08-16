import 'package:course/widget/card_gridniew.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/icons_app.dart';

class HomeVeiw extends StatefulWidget {
  const HomeVeiw({Key? key}) : super(key: key);

  @override
  State<HomeVeiw> createState() => _HomeVeiwState();
}

class _HomeVeiwState extends State<HomeVeiw> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.black,
          ),
        ),
        centerTitle: true,

        title: Column(
          children: [
            Text(
              "Make home",
              style: TextStyle(
                color: Color(0xfff909090),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "BEAUTIFUL",
              style: TextStyle(
                color: Color(0xfff242424),
                fontSize: 18,
              ),
            ),
          ],
        ), //title texts
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: ListView(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        ReusableIcon(
                          icon: Icons.star,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Popular",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xfff242424)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        ReusableIcon(
                          icon: Icons.chair_alt_outlined,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Chair",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xfff242424)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        ReusableIcon(
                          icon: Icons.table_restaurant_outlined,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Table",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xfff242424)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        ReusableIcon(
                          icon: Icons.chair_outlined,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Armchair",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xfff242424)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        ReusableIcon(
                          icon: Icons.bed_outlined,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Bed",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xfff242424)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        ReusableIcon(
                          icon: Icons.lightbulb_outlined,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Lamb",
                          style: TextStyle(
                              fontSize: 14, color: Color(0xfff242424)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableCard(),
                    SizedBox(
                      width: 30,
                    ),
                    ReusableCard(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableCard(),
                    SizedBox(
                      width: 21,
                    ),
                    ReusableCard(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          currentindex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
