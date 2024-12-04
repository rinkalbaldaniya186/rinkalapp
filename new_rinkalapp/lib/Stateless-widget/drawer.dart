import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

var _currentIndex = 0;
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Row(
                     children: [
                       CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 50,
                         backgroundImage: NetworkImage(
                             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfXKzxBrv-nr-V2w6n-Hf14w-Mw-p4tD_f6GPvjOCW4CoikavWniBoh4rNfKid-VyUwH4&usqp=CAU'
                         ),
                         ),
                       SizedBox(
                         width: 10,
                       ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('User Name',style: TextStyle(fontFamily: 'KodeMono', fontSize: 25, fontWeight: FontWeight.w500),),
                          Text('User Id',style: TextStyle(fontFamily: 'KodeMono',fontSize: 25),)
                        ],
                      )
                  ],
                )
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  print('Home');
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  print('Profile');
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Setting'),
                onTap: () {
                  print('Setting');
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Exit'),
                onTap: () {
                  print('Exit');
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_outlined),
                label: 'Cart',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting'
            ),
          ],
          onTap: (value) {
            print(value);
            _currentIndex = value;
          },
          currentIndex: _currentIndex,
          //selectedFontSize: 22,
          selectedItemColor: Colors.red,
          selectedFontSize: 20,
          unselectedItemColor: Colors.black,
          unselectedFontSize: 17,
          backgroundColor: Colors.lightBlueAccent,
          iconSize: 27,
        ),
        appBar: AppBar(
          title: const Text('Home Page',style: TextStyle(color: Colors.black,fontSize: 30),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        body: Center(
          child: Container(
            child: const Text('Home',style: TextStyle(color: Colors.black, fontSize: 25),),
          ),
        ),
      ),
    );
  }
}
