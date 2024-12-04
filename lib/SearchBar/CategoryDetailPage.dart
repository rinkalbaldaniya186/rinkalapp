import 'package:flutter/material.dart';

class CategoryDetailPage extends StatefulWidget {
  const CategoryDetailPage({super.key});

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Detail'),
      ),
      body: SingleChildScrollView(
        child: ListView(
         children: [
           Column(
             children: [
               Container(
                 height: 400,
                 width: double.infinity,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                      image: AssetImage(''),
                    )
                 ),
               )
             ],
           ),
         ],
        ),
      )
    );
  }
}
