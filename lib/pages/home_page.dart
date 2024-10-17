import 'package:flutter/material.dart';
import '../tab/burguer_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Tab> myTabs = [
    // Donut tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/donut.png')),
      text: 'Donuts', // Nombre del tab
    ),

    // Burger tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/burger.png')),
      text: 'Burgers', // Nombre del tab
    ),

    // Smoothie tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/smoothie.png')),
      text: 'Smoothies', // Nombre del tab
    ),

    // Pancake tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/pancakes.png')),
      text: 'Pancakes', // Nombre del tab
    ),

    // Pizza tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/pizza.png')),
      text: 'Pizzas', // Nombre del tab
    ),
  ];

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[1200], size: 36),
              onPressed: () {
                print('No sé programar');
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {
                  print('otro');
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text('I Want to ', style: TextStyle(fontSize: 32)),
                  Text('break',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
            // Tab bar
            TabBar(tabs: myTabs),
            // Tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // Donut tab
                  DonutTab(),
                  // Burger tab
                  BurgerTab(),
                  // Smoothie tab
                  SmoothieTab(),
                  // Pancake tab
                  PancakeTab(),
                  // Pizza tab
                  PizzaTab(),
                ],
              ),
            ),
            // Carrito
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, -1), // Sombra hacia arriba
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '2 Items | \$45',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Delivery Charges Included',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Acción del botón View Cart
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, // Color del botón
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}