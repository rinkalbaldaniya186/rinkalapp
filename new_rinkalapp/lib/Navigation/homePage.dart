import 'package:flutter/material.dart';
import 'package:new_rinkalapp/Navigation/logIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String uName;
  Future<String> userName()  async {
     var prefs = await SharedPreferences.getInstance();
     uName = prefs.getString("UNAME") ?? 'guest';
     print(uName);
     return uName;
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Page',
            style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.w800
            )
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: const Text('Log Out'),
                  onTap: () async {
                    // SaveRecord = false;
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => LogInPage.Default(),));
                    var pref = await SharedPreferences.getInstance();
                    await pref.setBool("isLoggedin", false);
                    await pref.remove("UNAME");


                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => LogInPage.Default(),));
                  },
                )
              ];
            },
          )
        ],
        // leading: IconButton(
        //   onPressed: () {
        //
        //   },
        //   icon: Icon(Icons.arrow_back),
        // ),
      ),
      body: FutureBuilder(
          builder: (context, snapshot) {
            return Center(
              child: Text(snapshot.data.toString(), style: const TextStyle(fontSize: 25)),
            );
        }, future: userName()
      ),
    );
  }
}