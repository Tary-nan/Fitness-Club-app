import 'package:flutter/material.dart';

class FitNessClubApp extends StatelessWidget {
  const FitNessClubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.only(top: 10, left: 10),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(top: 10, right: 10),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fitness Club',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              // padding: const EdgeInsets.only(left: 15),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    height: 300,
                    width: 200,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yoga \nClub',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                      height: 1.4),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.person),
                                    Text('5.634'),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              // height: 40,
                              // width: 50,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Text('Join'),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            )
                          ],
                        ),
                        Container(
                          width: 95,
                          height: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  // fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://www.pngplay.com/wp-content/uploads/8/Yoga-PNG-Clipart-Background.png'))),
                          // child: Image.asset('assets/images/5.png',),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                        color: Color(0xffECEAEB),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          child: Column(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yoga \nClub',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                      height: 1.4),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.person),
                                    Text('5.634'),
                                  ],
                                ),
                              ],
                            )
                          ]),
                        )),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  // fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://www.pngplay.com/wp-content/uploads/8/Yoga-PNG-Clipart-Background.png'))),
                        )),
                      ],
                    ),
                    decoration: const BoxDecoration(
                        color: Color(0xffECEAEB),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Daily'),
            // Container(
            //   padding: EdgeInsets.only(right: 15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(children: [
            //         Container(
            //           height: 50,
            //           width: 50,
            //           child: Icon(Icons.sports_bar),
            //           decoration: BoxDecoration(
            //               color: Colors.red,
            //               borderRadius: BorderRadius.circular(10)),
            //         ),
            //         Column(
            //           children: [
            //             Text(
            //               'Steps',
            //               style: TextStyle(color: Colors.black, fontSize: 32),
            //             ),
            //             Text('Hello world'),
            //           ],
            //         ),
            //       ]),
            //       Container(
            //         alignment: Alignment.center,
            //         height: 35,
            //         width: 75,
            //         child: Text('2343'),
            //         decoration: BoxDecoration(
            //             color: Colors.grey,
            //             borderRadius: BorderRadius.circular(10)),
            //       ),
            //     ],
            //   ),
            // ),

            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.sports_bar),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
              title: Text('Setp 2'),
              subtitle: Text('Hello world 2'),
              trailing: Container(
                alignment: Alignment.center,
                height: 35,
                width: 75,
                child: Text('2343'),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.sports_bar),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
              title: Text('Setp 2'),
              subtitle: Text('Hello world 2'),
              trailing: Container(
                alignment: Alignment.center,
                height: 35,
                width: 75,
                child: Text('2343'),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.sports_bar),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
              title: Text('Setp 2'),
              subtitle: Text('Hello world 2'),
              trailing: Container(
                alignment: Alignment.center,
                height: 35,
                width: 75,
                child: Text('2343'),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
      // body: Container(color: Colors.grey),
    );
  }
}
