import 'package:flutter/material.dart';

class AppToDay extends StatelessWidget {
  const AppToDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenDay(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScreenDay extends StatelessWidget {
  const ScreenDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(7)),
          margin: const EdgeInsets.only(top: 15, left: 10),
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black87.withOpacity(.5)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(7)),
            margin: const EdgeInsets.only(top: 15, left: 15, right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 20,),
          const Text(
            'Fitness Club',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)

                      ),
                      height: 300,
                      width: 200,
                      
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    )

                  ],
                ),
              ),
              // Expanded(child: Container(color: Colors.blueAccent,)),
            ],
          ))
        ]),
      ),
    );
  }
}
