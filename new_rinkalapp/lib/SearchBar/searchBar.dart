import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_rinkalapp/SearchBar/model/MovieClass.dart';

// import 'movie.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'show search',
      home: SearchExample(),
    );
  }
}

class SearchExample extends StatefulWidget {
  const SearchExample({Key? key}) : super(key: key);

  @override
  State<SearchExample> createState() => _SearchExampleState();
}

class _SearchExampleState extends State<SearchExample> {
  List<Movie> movieList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    movieList.add(Movie(1, "Raaz", "Horror", 3.5));
    movieList.add(Movie(2, "Avatar", "SciFi, Adventure", 4.5));
    movieList.add(Movie(3, "Harry Potter", "Drama, Adventure", 4.0));
    movieList.add(Movie(4, "House of Dragon", "Fantasy, Drama", 4.0));
    movieList.add(Movie(5, "Game of Thrones", "Fantasy, Drama", 4.5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MovieSearchDelegate(movieList));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}

class MovieSearchDelegate extends SearchDelegate<Movie> {
  List<Movie> movieList;

  MovieSearchDelegate(this.movieList);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<Movie> suggestionList = query.isEmpty ? movieList : movieList.where((movie) => movie.name.toLowerCase().startsWith(query.toLowerCase())).toList();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    child: Container(
                      height: 90,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      /* color: Colors.blue,*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            suggestionList[index].name,
                            style: const TextStyle(fontSize: 22),
                          ),
                          RatingBar.builder(
                            initialRating: suggestionList[index].rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 24,
                            /*itemPadding: EdgeInsets.symmetric(horizontal: 4.0),*/
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            ignoreGestures: true,
                            onRatingUpdate: (value) {
                            },
                          ),
                          Text(
                            suggestionList[index].category,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey.shade200,
            );
          },
          itemCount: suggestionList.length),
    );
  }
}
