import 'package:flutter/material.dart';
import 'package:new_rinkalapp/statefull-widget/listViewCustom_Practice.dart';

import 'model/song.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: listViewExample(),
    );
  }
}

class listViewExample extends StatefulWidget {
  const listViewExample({super.key});

  @override
  State<listViewExample> createState() => _listViewExampleState();
}

class _listViewExampleState extends State<listViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const callPage(),));
              },
            title: const Text('Old Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade50,
          ),
          ListTile(

            title: const Text('New Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade100,
          ),
          ListTile(
            onTap: () {

            },
            title: const Text('Hindi Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade200,
          ),
          ListTile(

            title: const Text('Gujarati Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade300,
          ),
          ListTile(

            title: const Text('Punjabi Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade400,
          ),
          ListTile(

            title: const Text('English Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade500,
          ),
          ListTile(

            title: const Text('Remix Songs'),
            titleTextStyle: const TextStyle(color: Colors.black,fontSize: 20),
            leading: const Icon(Icons.music_note_outlined,color: Colors.black),
            tileColor: Colors.grey.shade600,
          )
        ],
      )
    );
  }
}

List<Song> songList = [];
var _iconColor;
var currentLikeIndex;
var currentIndex;
var selectedAll = [];

class hindiSongs extends State<listViewExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    songList.add(Song('Tu hai', 'Darshan Raval', 'assets/image/tuhai.jpg'));
    songList.add(Song('papa kahte hai (From "Srikanth")', 'Anand-Milind, Udit Narayan, Aditya Dev', 'assets/image/Papa-Kehte-Hain-From-Srikanthjpg.jpg'));
    songList.add(Song('Gulabi Ankhiyan (From "LSD 2")', 'Jubin nautiyal', 'assets/image/gulabiAkhhiyanSong.jfif'));
    songList.add(Song('Main Na Jaanu Kyu', 'Ayushmann Khurrana, FaridKot', 'assets/image/Main Na Jaanu Kyu.jfif'));
    songList.add(Song('Piya', 'Khwwab, Divyam, Sodhi, Likhari','assets/image/piya.jfif'));
    songList.add(Song('Faasla', 'Madhur Sharma, Ravator', 'assets/image/faasla.jfif'));
    songList.add(Song('Tu Kya Jaane', 'Yashika Sikka', 'assets/image/tukyajane.jfif'));
    songList.add(Song('Rang Ishq Ka', 'Vishal Mishra', 'assets/image/RangIshqKa.jfif'));
    songList.add(Song('One Hai Re Bhai', 'Emiway Bantai', 'assets/image/OneHaiReBhai.jfif'));
    songList.add(Song('Kahani Meri', 'Kaiff Khalil, Anmol Daniel', 'assets/image/KahaniMeri.jfif'));
    songList.add(Song('Dil Phisal Gaya (From "Ruslaan")', 'Vishal Dadlani', 'assets/image/DilPhisalGaya .jfif'));
    songList.add(Song('Solumate', 'Badshah, Arijit Singh', 'assets/image/Solumate.jfif'));
    songList.add(Song('Apna Bana Le', 'Arijit Singh, Sachin-Jigar', 'assets/image/ApnaBanaLe.jfif'));
    songList.add(Song('Tum Se (From "Teri Baaton Mein Aisa Uljha Jiya")', 'Sachin-Jigar, Raghav Chaitanya, Varun Jain', 'assets/image/TumSe.jfif'));
    songList.add(Song('Akhiyaan Gulaab (From "Teri Baaton Mein Aisa Uljha Jiya")', 'Mitraj', 'assets/image/akhiyaanGulaab .jfif'));
    songList.add(Song('Saza', 'Lisa Mishra', 'assets/image/Saja.jfif'));
    songList.add(Song('Pahle Bhi Main', 'Vishal Mishra, Raj Shekhar', 'assets/image/PahleBhiMain.jfif'));
    songList.add(Song('Satranga (From "ANIMAL")', 'Arijit Singh, Shreyas Puranik', 'assets/image/Satranga.jfif'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List of Song :-',style: TextStyle(color: Colors.black,fontSize: 30)),
        ),
        body: ListView.builder(
          itemCount: songList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              onLongPress: () {
                selectedAll.add(index);
              },
              contentPadding: const EdgeInsets.only(left: 5,right: 10),
              title: Text('${songList[index].songName}'),
              subtitle: Text('${songList[index].artistName}'),
              leading:  CircleAvatar(
                maxRadius: 35,
                backgroundImage: AssetImage(('${songList[index].image}'),
                ),
              ),
              trailing: SizedBox(
                height: 50,
                width: 100,
                // color: Colors.cyan,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.play_arrow),
                      onPressed: () {
                        //  _iconColor == index ? _iconColor = Colors.red : _iconColor = Colors.grey;
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite,color:  currentLikeIndex == index ? Colors.redAccent : _iconColor = Colors.grey,),
                      onPressed: () {
                        //  _iconColor == index ? _iconColor = Colors.red : _iconColor = Colors.grey;
                        setState(() {
                          currentLikeIndex = index;
                        });
                      },
                    ),
                  ],
                ),
              ),
              selected: currentIndex==index ? true : false,
              selectedTileColor: Colors.lightBlue.shade300,
              selectedColor: Colors.black,
            );
          },
        )
    );
  }
}
