import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

var _currentIndex = 1;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation Bar',style: TextStyle(fontFamily: 'Kanit', color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lightBlueAccent,
          iconSize: 25,
          unselectedFontSize: 18,
          selectedFontSize: 19,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.black,
          onTap: (value) {
            print('value');
            _currentIndex = value;
          },
          items: const [
             BottomNavigationBarItem(
                 icon: Icon(Icons.restaurant_menu),
                 label: 'Recipes',
             ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.list),
                 label: 'Plans'
             ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.shopping_cart),
                 label: 'Groceries'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account'
            )
         ],
        ),
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.purple,
          onPressed: () {},
          backgroundColor: Colors.lightBlueAccent,
          elevation: 20,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        body: Center(
          child: Container(
            child: const Text('Hello World',style: TextStyle(fontFamily: 'Kanit',fontSize: 40),),
          ),
        ),
      ),
    );
  }
}
