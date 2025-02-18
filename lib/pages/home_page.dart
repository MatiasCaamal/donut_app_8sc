import 'package:donut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myTabs = [
      //donut tab
      const MyTab(
        iconPath: 'lib/icons/donut.png',
        tabName: 'Donuts',
      ),
      //burger tab
      const MyTab(
        iconPath: 'lib/icons/burger.png',
        tabName: 'Burger',
      ),
      //smoothie tab
      const MyTab(iconPath: 'lib/icons/donut.png', tabName: 'Smoothie'),
      //pancake tab
      const MyTab(iconPath: 'lib/icons/pancakes.png', tabName: 'Pancake'),
      //pizza tab
      const MyTab(iconPath: 'lib/icons/pizza.png', tabName: 'Pizza')
    ];

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            )
          ],
        ),
        body: Column(
          children: [
            // Texto "I want to Eat"
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            // Tab Bar
            TabBar(
              tabs: myTabs,
              //Color del texto seleccionado
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.grey,
            ),

            // Tab bar view
            Expanded(
                child: TabBarView(children: [
              DonutTab(),
              BurgerTab(),
              SmoothieTab(),
              PancakeTab(),
              PizzaTab()
            ])),

            // Carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2 Items |  \$45',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Delivery Charges Included',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
