import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

var _currentIndex = 2;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation bar',style: TextStyle(color: Colors.black,fontSize: 22),),
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        drawer: Drawer(
            backgroundColor: Colors.lightBlue.shade200,
            child: ListView(
              children: [
                Container(
                  color: Colors.lightBlue.shade100,
                  child: const DrawerHeader(
                    child: Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightBlue,
                        radius: 45,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/23/a9/2c/23a92c27f8c42d72ad1bfb0925ddbfbb.jpg'
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("It's Angel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),
                          ),
                          Text('@angel_123gmail.com',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15
                              )
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.black, size: 27),
                  title: const Text('Home'),
                  onTap: () {
                    print('Home');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading:
                      const Icon(Icons.account_circle, color: Colors.black, size: 27),
                  title: const Text('Profile'),
                  onTap: () {
                    print('Profile');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: const Icon(Icons.event_note_sharp,
                      color: Colors.black, size: 27),
                  title: const Text('Events'),
                  onTap: () {
                    print('Events');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading:
                      const Icon(Icons.notifications, color: Colors.black, size: 27),
                  title: const Text('Notification'),
                  onTap: () {
                    print('Notification');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: const Icon(Icons.perm_contact_calendar_sharp,
                      color: Colors.black, size: 27),
                  title: const Text('Contact info'),
                  onTap: () {
                    print('Contact info');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.black, size: 27),
                  title: const Text('Setting'),
                  onTap: () {
                    print('Setting');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: const Icon(Icons.lock, color: Colors.black, size: 27),
                  title: const Text('Log Out'),
                  onTap: () {
                    print('Log Out');
                  },
                  textColor: Colors.black,
                  titleTextStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined), label: 'Location'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_off), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2), label: 'Person'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video), label: 'videos'),
          ],
          onTap: (value) {
            print('value');
            _currentIndex = value;
          },
          currentIndex: _currentIndex,
          selectedItemColor: Colors.black,
          selectedFontSize: 18,
          backgroundColor: Colors.lightBlueAccent,
          iconSize: 25,
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World',style: TextStyle(color: Colors.black, fontSize: 25),),
          ),
        ),
      ),
    );
  }
}
