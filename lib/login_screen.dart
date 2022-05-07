import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050406),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff050406),
        leading: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.keyboard_return,
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // contqiner pour text
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Let's sign you in.",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Welcome back.\nYou\'ve been missed!',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 30),
                          ),
                        ]),
                  ),

                  SizedBox(
                    height: 65,
                  ),

                  // container pour textField
                  Container(
                    child: Column(
                      children: [
                        // 1 er TextField
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Color(0xff354341)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Phone email and username",
                              hintStyle: TextStyle(color: Colors.white70),
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.yellow, width: 3),
                              // )
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),

                        // 2e TextField
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Color(0xff354341)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Phone email and username",
                                hintStyle: TextStyle(color: Colors.white70),
                                suffixIcon: Icon(
                                  Icons.lock_clock,
                                  color: Color(0xff354341),
                                )
                                // border: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.yellow, width: 3),
                                // )
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // containter pour boutton
              // SizedBox(
              //   height: 180,
              // ),

              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.all(Radius.circular(30))
                        // ),
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            onPressed: () {},
                            child: Text('Sign In',
                                style: TextStyle(
                                    color: Color(0xff050406),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
