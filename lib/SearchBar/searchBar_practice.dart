import 'package:flutter/material.dart';
import 'package:rinkalapp/SearchBar/model/StudentClass.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SearchBarExample(),
    );
  }
}

class SearchBarExample extends StatefulWidget {
  const SearchBarExample({super.key});

  @override
  State<SearchBarExample> createState() => _SearchBarExampleState();
}


class _SearchBarExampleState extends State<SearchBarExample> {
  List<Student> studentData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    studentData.add(Student('Rinkal','Flutter Development','assets/image/girl8.jpg'));
    studentData.add(Student('Dhruvi','Full Stack Development','assets/image/girl1.jpg'));
    studentData.add(Student('Kaushika','Web Development','assets/image/girl2.jpg'));
    studentData.add(Student('Vishva','Graphic Designing','assets/image/girl3.jpg'));
    studentData.add(Student('Krishna','Graphic Designing','assets/image/girl4.jpg'));
    studentData.add(Student('Divya','Web Development','assets/image/girl5.jpg'));
    studentData.add(Student('Nayna','Graphic Designing','assets/image/girl6.jpg'));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
        backgroundColor: Colors.grey.shade400,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MovieSearchDelegate(studentData));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Container(
          child: const Text('Student Data',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}

class MovieSearchDelegate extends SearchDelegate<Student> {

  List<Student> studentData;
  MovieSearchDelegate(this.studentData);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back)
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Student> suggestionList = query.isEmpty ? studentData : studentData.where((Student) => Student.name.toLowerCase().startsWith(query.toLowerCase())).toList();

    return ListView.separated(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return  ListTile(
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage('${suggestionList[index].profilePic}'),
          ),
          title: Text(suggestionList[index].name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              )
          ),
          subtitle: Text(suggestionList[index].Course,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
              )
          ),
          trailing: IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.add_call),
          ),
          tileColor: Colors.grey.shade200,

        );
      },

      separatorBuilder: (BuildContext context, int index) {
        return Container(height: 2, color: Colors.black,);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<Student> suggestionList = query.isEmpty ? studentData : studentData.where((Student) => Student.name.toLowerCase().startsWith(query.toLowerCase())).toList();

    return ListView.separated(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return  ListTile(
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage('${suggestionList[index].profilePic}'),
          ),
          title: Text(suggestionList[index].name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              )
          ),
          subtitle: Text(suggestionList[index].Course,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
              )
          ),
          trailing: IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.add_call),
          ),
          tileColor: Colors.grey.shade200,

        );
      },

      separatorBuilder: (BuildContext context, int index) {
        return Container(height: 2, color: Colors.black,);
      },
    );
  }
}

// Row(
//           children: [
//             CircleAvatar(
//               maxRadius: 35,
//               backgroundImage: AssetImage('${suggestionList[index].profilePic}'),
//             ),
//             SizedBox(
//               width: 20,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('${suggestionList[index].name}',
//                   style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600
//                   )
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text('${suggestionList[index].Course}',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400
//                   )
//                 ),
//                 RatingBar.builder(
//                 initialRating: suggestionList[index].rating,
//                 minRating: 1,
//                 direction: Axis.horizontal,
//                 allowHalfRating: true,
//                 itemCount: 5,
//                 itemSize: 24,
//                 /*itemPadding: EdgeInsets.symmetric(horizontal: 4.0),*/
//                 itemBuilder: (context, _) => Icon(
//                 Icons.star,
//                 color: Colors.amber,
//                 ),
//                 ignoreGestures: true,
//                 onRatingUpdate: (value) {
//                 },
//                 ),
//               ],
//             ),
//           ],
//         );