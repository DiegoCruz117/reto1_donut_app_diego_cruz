import 'package:flutter/material.dart';
import '../tab/burguer_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    List<Widget> myTabs = [
      //donut tab
      const MyTab(iconPath: 'lib/icons/donut.png',),
      //burguer tab
      const MyTab(iconPath: 'lib/icons/burger.png',),
      //smoothie tab
      const MyTab(iconPath: 'lib/icons/smoothie.png',),
      //pancake tab
      const MyTab(iconPath: 'lib/icons/pancakes.png',),
      //pizza tab
      const MyTab(iconPath: 'lib/icons/pizza.png',),
    ];
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: Padding(
            padding: const EdgeInsets.only(left:24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[1200], size: 36), onPressed: () { print('No sé programar'); },),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:24.0),
              child: IconButton(icon: Icon(Icons.person, color: Colors.grey[800],size: 36), onPressed: () { print('otro'); },),
            )
          ],
        ),
        body: Column(children: [
          //texto
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text('I Want to ', style: TextStyle(fontSize: 32)),
                Text('Eat', style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
              ],
            ),
          ),
          //Tap_bar
          TabBar(tabs: myTabs),
          //Tap_bar_view
          const Expanded(child: TabBarView(children: [
            //Donut tab
            DonutTab(),
            //Burger tab
            BurgerTab(),
            //Smoothie tab
            SmoothieTab(),
            //Pancake tab
            PancakeTab(),
            //Pizza tab
            PizzaTab(),
          ],),)
          //Carrito
        ],),
      ),
    );
  }
}