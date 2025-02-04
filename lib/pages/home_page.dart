import 'package:donut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

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
    const MyTab(iconPath: 'lib/icons/donut.png',),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png',),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/donut.png',),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png',),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png',)
    ];


    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, 
          leading: Icon(Icons.menu, color: Colors.grey[800],),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          )],),
          body: Column(
            children: [
              // Texto "I want to Eat"
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Row(
                  children: [
                  Text('I want to ', style: TextStyle(fontSize: 32),),
                  Text('Eat', style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.bold, 
                    decoration: TextDecoration.underline),)
                  ],
                ),
              ),
              // Tab Bar
              TabBar(tabs: myTabs)
      
      
              // Tab bar view
      
      
              // Carrito
      
      
            ],
          ),
      
      
      ),
    );
  }
}