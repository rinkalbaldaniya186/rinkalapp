import 'package:flutter/material.dart';
import 'package:new_rinkalapp/statefull-widget/model/whatsapp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: whatsappPageUi(),
    );
  }
}

class whatsappPageUi extends StatefulWidget {
  const whatsappPageUi({super.key});

  @override
  State<whatsappPageUi> createState() => _whatsappPageUiState();
}

List<WpContact> contactList = [];

class _whatsappPageUiState extends State<whatsappPageUi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    contactList.add(WpContact('papa', Icons.done_all, 'photo', 'assets/image/krishna.jfif', '3:04 Pm', notification: ''));
    contactList.add(WpContact('F mitu', Icons.cancel, 'Typing...',
        'assets/image/mituDp.jfif', '2:45 pm',
        notification: ''));
    contactList.add(WpContact('F Drashti', Icons.keyboard_voice_rounded, '1.30',
        'assets/image/krishna.jfif', '10:30 Pm',
        notification: ''));
    contactList.add(WpContact('khushi', Icons.file_copy, 'photo',
        'assets/image/meProfile.jpg', '2;00 pm',
        notification: '1'));
    contactList.add(WpContact(
        'Dipak bro',
        Icons.link,
        'https://docs.flutter.dev',
        'assets/image/radha_krishna.jfif',
        '12:30 pm',
        notification: '2'));
    contactList.add(WpContact(
        'F Vishva', Icons.done_all, 'hii', 'assets/image/flr.jpg', '11:04 am',
        notification: ''));
    contactList.add(WpContact('F Kaushika', Icons.photo, 'Photo',
        'assets/image/krishna.jfif', '10:30 Pm',
        notification: ''));
    contactList.add(WpContact('F Radhu', Icons.done, 'srs',
        'assets/image/radha_krishna.jfif', '11:04 am',
        notification: ''));
    contactList.add(WpContact('Dhruvi class', Icons.done_all, 'hyy',
        'assets/image/white_flower.jpg', '11:04 am',
        notification: ''));
    contactList.add(WpContact(
        'Mitrusha',
        Icons.done_all,
        'https://api.flutter.dev/flutter/widgets',
        'assets/image/meProfile.jpg',
        '11:04 am',
        notification: ''));
    contactList.add(WpContact('Sonal sister', Icons.keyboard_voice_rounded,
        '0.50', 'assets/image/krishna.jfif', '10:30 Pm',
        notification: '1'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        backgroundColor: Colors.green.shade500,
        actions: [
          Container(
            // color: Colors.grey,
            height: 50,
            padding: const EdgeInsets.all(10),
            child: const Row(children: [
              Icon(Icons.camera_alt_outlined, color: Colors.black, size: 28),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.more_vert, color: Colors.black, size: 28),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green.shade700,
          selectedLabelStyle: const TextStyle(
              color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, size: 28),
              label: 'Chats',
              // backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi_tethering_error_rounded_sharp, size: 26),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_rounded, size: 26),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call, size: 26),
              label: 'Calls',
            ),
          ]),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              contactList[index].name,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
            ),
            subtitle: Row(
              children: [
                (contactList[index].myIcon == Icons.cancel)
                    ? const Text('')
                    : Icon(contactList[index].myIcon,
                        color: (contactList[index].myIcon == Icons.done_all)
                            ? Colors.blue
                            : Colors.black54),
                //Icon(Icons.done_all),
                const SizedBox(
                  width: 3,
                ),
                Text(contactList[index].msg,
                    style: const TextStyle(fontSize: 16), maxLines: 1),
              ],
            ),
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: AssetImage('${contactList[index].profilePic}'),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${contactList[index].time}',
                  style: const TextStyle(fontSize: 12),
                ),
                (contactList[index].notification != '')
                    ? CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: Colors.green.shade500,
                        child: Text('${contactList[index].notification}'))
                    : const CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: Colors.white,
                        // child:  Text('${contactList[index].notification}')
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
