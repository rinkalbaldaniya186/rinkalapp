import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {

  var dataList;
  PageViewExample(this.dataList, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(dataList.image),
                          fit: BoxFit.fitWidth,
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('${dataList.title}',style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('${dataList.subTitle}',style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
          ),
       );
  }
}
