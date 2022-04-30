import 'package:flutter/material.dart';

class ScreenDayTwo extends StatefulWidget {
  const ScreenDayTwo({Key? key}) : super(key: key);

  @override
  State<ScreenDayTwo> createState() => _ScreenDayTwoState();
}

class _ScreenDayTwoState extends State<ScreenDayTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor : Colors.white,
      //   systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: SafeArea(
        // maintainBottomViewPadding: true,)
        // minimum: EdgeInsets.all(20),
        left: false,
        bottom: true,
        child: PageView(
          children: const [
            _ScreenOne(
              image: 1,
            ),
            _ScreenOne(
              image: 2,
            ),
            _ScreenOne(
              image: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class _ScreenOne extends StatelessWidget {
  const _ScreenOne({Key? key, required this.image}) : super(key: key);

  final int image;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:  const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
            opacity: .8,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/$image.jpg',
            )),
        // borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: const [.3, .9],
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2)
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text(
                    '1',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('USA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 15,
                          )
                        ],
                      ),
                      const Text('4.0',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      const Text('(2300)',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 10)),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore, ex. Odit quaerat ex nesciunt atque aperiam mollitia, veritatis aliquid iste eius autem quasi labore, fugit praesentium nam nobis nulla dolorem!',
                    style: TextStyle(
                        color: Colors.white70, fontSize: 13, height: 1.9),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text('READ MORE',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
