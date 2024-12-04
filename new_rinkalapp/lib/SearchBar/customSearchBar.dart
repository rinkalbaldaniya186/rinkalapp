import 'package:flutter/material.dart';
import 'model/user.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: CustomSearchList(),
    );
  }
}

class CustomSearchList extends StatefulWidget {
  const CustomSearchList({Key? key}) : super(key: key);

  @override
  State<CustomSearchList> createState() => _CustomSearchListState();
}

class _CustomSearchListState extends State<CustomSearchList> {
  List<User> userList = [];
  List<User> filterList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    userList.add(User(1, 'Mitansh', 'mitansh@gmail.com'));
    userList.add(User(2, 'Hitul', 'hitul@gmail.com'));
    userList.add(User(3, 'Kinjal', 'kinjal@gmail.com'));
    userList.add(User(4, 'Abhi', 'abhi@gmail.com'));
    userList.add(User(5, 'Hiren', 'hiren@gmail.com'));

    filterList.addAll(userList);

  }

  void searchUser(String query) {
    List<User> tempList = [];

    if (query.isEmpty) {
      tempList = userList;
    }
    else {
      tempList = userList
          .where((user) => user.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      filterList = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                onChanged: (value) {
                  searchUser(value);
                },
                decoration: const InputDecoration(
                    hintText: 'type here...', suffixIcon: Icon(Icons.search)
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person, size: 40),
                    title: Text(filterList[index].name),
                    subtitle: Text(filterList[index].email),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
