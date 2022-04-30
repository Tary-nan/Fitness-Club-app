import 'package:first_app/fade_animation.dart';
import 'package:first_app/transition_screen.dart';
import 'package:flutter/material.dart';

import 'screen_day_1.dart';
// import 'package:flutter/widgets.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreeDayThree(),
    );
  }
}

class ScreeDayThree extends StatelessWidget {
  const ScreeDayThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FadeAnimation(
                    delay: .5,
                    child: Rotation3d(
                      rotationX: 10,
                      rotationY: 44,
                      rotationZ: 33,
                      child: Text(
                        'Taking Order For Faster Delivery',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FadeAnimation(
                    delay: 1,
                    child: Text(
                      'see restaurants nearby by adding \nyour location',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FadeAnimation(
                    delay: 1.2,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          gradient: LinearGradient(colors: [
                            Colors.yellow,
                            Colors.orange,
                          ], begin: Alignment.centerLeft)),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context, WhitePageRoute(enterPage: const HomePage()));
                        },
                        child: const Text(
                          'start',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FadeAnimation(
                    delay: 1.4,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'How Deliver To You Doo 24/7 ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70),
                        )),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ], begin: Alignment.bottomRight))),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/food/starter-image.jpg')))),
    );
  }
}
