import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rinkalapp/SearchBar/CategoryDetailPage.dart';
import 'package:rinkalapp/SearchBar/model/Category.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: CustomSearchBar(),
    );
  }
}

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {

 List<Category> categoryList = [];
 List<Category> filterList = [];

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    categoryList.add(Category('assets/image/selling1.jpg', 'Round Long Kurties', 359.00, 3.3));
    categoryList.add(Category('assets/image/selling2.jpg', 'Women Printed T-shirt', 150.00, 3.6));
    categoryList.add(Category('assets/image/selling3.jpg', 'Super Stylish Shirt', 250.00, 4.0));
    categoryList.add(Category('assets/image/selling4.jpg', 'Kurti Top', 399.00, 3.9));
    categoryList.add(Category('assets/image/selling5.jpg', 'Women Cotton Foil Print Top', 350.00, 4.5));
    categoryList.add(Category('assets/image/selling6.jpg', 'Tunics', 449.00, 4.2));
    categoryList.add(Category('assets/image/selling7.jpg', 'New Trendy Anarkali Kurtis', 255.00, 3.5));
    categoryList.add(Category('assets/image/selling8.jpg', 'Women\'s Printed Dress', 599.00, 4.8));
    categoryList.add(Category('assets/image/selling9.jpg', 'Pretty Designer Women Dresses', 499.00, 3.9));
    categoryList.add(Category('assets/image/selling10.jpg', 'White Love Single Shoulder Top', 180.00, 4.5));

    filterList.addAll(categoryList);

 }

 void SearchList(String query){

   List<Category> tempList = [];

   if(query.isEmpty){
     tempList = categoryList;
   }
   else{
  // tempList = categoryList.where((Category) => Category.name.toLowerCase().contains(query.toLowerCase())).toList();
     tempList = categoryList.where((Category) => Category.name.toLowerCase().startsWith(query.toLowerCase())).toList();
   }

   setState(() {
     filterList = tempList;
   });

 }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category List'),
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: TextField(
                onChanged: (value) {
                  SearchList(value);
                },
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: 'Search Category',
                  contentPadding: EdgeInsets.only(left: 10,top: 15),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemCount: filterList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryDetailPage(),));
                      },
                      child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(filterList[index].profilePic)
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                 Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(filterList[index].name,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                      Text('₹ ${filterList[index].rupees}',style: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
                                      RatingBar.builder(
                                        initialRating: filterList[index].rating,
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
                                    ],
                                ),
                          ],
                      ),
                    );
                  },
                separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 3,
                      color: Colors.black,
                  );
                },
              ),
            )
          ],
        ),
    );
  }
}


