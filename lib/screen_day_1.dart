
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenDayOne extends StatelessWidget {
  const ScreenDayOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // brightness: Brightness.,
        leading: IconButton(
            onPressed: () {},
            color: Colors.black87,
            icon: const Icon(Icons.menu)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20))),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Find Your',
                          style: TextStyle(fontSize: 25, color: Colors.black87),
                        ),
                        const Text(
                          'Inspiration',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              hintText: 'Hello world',
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7.0))),
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Colors.black.withOpacity(.1),
                              prefixIcon: const Icon(Icons.search)),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  // height: MediaQuery.of(context).size.height * .6,
                  child: Container(
                    height: constraints.maxHeight * .7,
                    // color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                            // fit: FlexFit.tight,
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            // SizedBox(
                            //   height: 20,
                            // ),
                            Text(
                              'Promo days',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        )),
                        Flexible(
                            flex: 3,
                            fit: FlexFit.loose,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                card(1),
                                const SizedBox(
                                  width: 10,
                                ),
                                card(2),
                                const SizedBox(
                                  width: 10,
                                ),
                                card(3)
                              ],
                            )),
                        Flexible(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.bottomCenter,
                                width: double.infinity,
                                padding: const EdgeInsets.only(bottom: 10),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: const Text('Best Design',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold)),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      opacity: .6,
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/5.png',
                                        )),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    gradient: LinearGradient(
                                      
                                        stops: const [.2, .9],
                                        begin: Alignment.bottomRight,
                                        colors: [
                                          Colors.black.withOpacity(.8),
                                          Colors.black.withOpacity(.1)
                                        ]),
                                    color: Colors.white)))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget card(img) => AspectRatio(
        aspectRatio: 2.0 / 3.0,
        child: Container(
            decoration: BoxDecoration(
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    opacity: .6,
                    image: AssetImage(
                      'assets/images/$img.jpg',
                    )),
                gradient: LinearGradient(
                    stops: const [.7, .9],
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.9)
                    ]),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.black)),
      );
}
