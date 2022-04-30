import 'package:flutter/material.dart';

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  final data1 = const [
    'Text 1',
    'Text 2',
    'Text 3',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 4',
    'Text 5',
    'Text 6',
    'Text 7',
    'Text 8',
    'Text 9',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...data1.map((element) => Text(element)).toList().take(10),

                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                      ],
                    )),
                const Text('data'),
                const Text('data'),

                // Flexible(
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       ...data1.map((element) => Text(element)).toList(),
                //     ],
                //   ),
                // ),
                ...data1.map((element) => Text(element)).toList(),

                // Container(
                //   height: 200,
                //   width: 400,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index){
                //     return ListTile(
                //       leading: CircleAvatar()
                //     );
                //   }),

                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
