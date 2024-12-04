import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                          children: [
                        Container(
                          child: const Text('Ukeh hyginus',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          child: const Text('Hi welcome back!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        )
                       ]
                      ),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    Container(
                      // color: Colors.yellow,
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple.shade100),borderRadius: BorderRadius.circular(50)),
                      // color: Colors.yellow,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/image/boy2.png'),
                        // child:  Image.asset('assets/image/boy2.png'),
                        maxRadius: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //  color: Colors.amber,
                      height: 170,
                      width: 330,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [Colors.blueGrey.shade900,Colors.blueGrey.shade800,Colors.blueGrey.shade500])
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // const SizedBox(
                          //   width: 20,
                          // ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Text('Account Balance',style: TextStyle(color: Colors.white,fontSize: 15)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: const Text('₹ 17,342',style: TextStyle(color: Colors.white,fontSize: 30),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              child: Image.asset('assets/image/boy3.png',fit: BoxFit.fill,)
                            //  child: Image.asset('assets/image/boys.png',fit: BoxFit.fill,)
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //  color: Colors.lightBlue,
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue),
                          gradient: LinearGradient(colors: [Colors.blue.shade100, Colors.blue.shade300])
                      ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(
                                height: 80,
                                  width: 80,
                                  //   color: Colors.purple,
                                  decoration: BoxDecoration(
                                    // color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.blue.shade400),
                                  ),
                                child: IconButton(
                                  onPressed: () {
                                    print('New');
                                  },
                                   icon: const Icon(Icons.add_circle),
                                   color: Colors.black87,
                                ),
                           ),
                           Container(
                            child: const Text('New',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      //   color: Colors.redAccent,
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red),
                          gradient: LinearGradient(colors: [Colors.red.shade100, Colors.red.shade300])
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              // child: CircleAvatar(
                              //   maxRadius: 40,
                                height: 80,
                            width: 80,
                         //   color: Colors.purple,
                            decoration: BoxDecoration(
                               // color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.red.shade400),
                            ),
                              // child: CircleAvatar(
                              //   maxRadius: 40,
                                child: IconButton(
                                  onPressed: () {
                                    print('Spend');
                                  },
                                  icon: const Icon(Icons.library_books),
                                  color: Colors.black87,
                                ),
                          ),
                          Container(
                            child: const Text('Spend',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green),
                          gradient: LinearGradient(colors: [Colors.green.shade100, Colors.green.shade300])
                      ),
                      //  color: Colors.greenAccent,
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              // child: CircleAvatar(
                              //   maxRadius: 40,
                                height: 80,
                        width: 80,
                        //   color: Colors.purple,
                        decoration: BoxDecoration(
                          // color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.green.shade500),
                        ),
                              // child: CircleAvatar(
                              //   maxRadius: 40,
                                child: IconButton(
                                  onPressed: () {
                                    print('Borrow');
                                  },
                                  icon: const Icon(Icons.clean_hands_outlined),
                                  color: Colors.black87,
                                ),
                          ),
                          Container(
                            child: const Text('Borrow',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      //  color: Colors.purpleAccent,
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.purple),
                          gradient: LinearGradient(colors: [Colors.purple.shade100, Colors.purple.shade300])
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              // child: CircleAvatar(
                              //   maxRadius: 40,
                                height: 80,
                            width: 80,
                            //   color: Colors.purple,
                            decoration: BoxDecoration(
                              // color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.purple.shade400),
                            ),
                              // child: CircleAvatar(
                              //   maxRadius: 40,
                                child: IconButton(
                                  onPressed: () {
                                    print('Save');
                                  },
                                  icon: const Icon(Icons.lock),
                                  color: Colors.black87,
                                ),
                          ),
                          Container(
                            child: const Text('Save',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
         ),
         bottomNavigationBar: BottomNavigationBar(
           showSelectedLabels: true,
           showUnselectedLabels: true,
           elevation: 100,
           iconSize: 30,
           unselectedFontSize: 14,
           selectedFontSize: 14,
           selectedItemColor: Colors.black,
           unselectedItemColor: Colors.grey.shade600,
          // unselectedLabelStyle: TextStyle(color: Colors.black,),
           items: const [
             BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.payment),
               label: 'Payments',
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.add_card_sharp),
               label: 'Card',
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.more),
               label: 'more',
             )
          ],
        ),
      ),
    );
  }
}
