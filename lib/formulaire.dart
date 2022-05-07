import 'package:flutter/material.dart';

class FormulaireApp extends StatelessWidget {
  const FormulaireApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormulaireScreen(),
    );
  }
}

class FormulaireScreen extends StatefulWidget {
  const FormulaireScreen({Key? key}) : super(key: key);

  @override
  State<FormulaireScreen> createState() => _FormulaireScreenState();
}

class _FormulaireScreenState extends State<FormulaireScreen> {

  var controllerText = TextEditingController();

  @override
  void initState() {
    controllerText.addListener(() { 

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('construction');
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
             keyboardType: TextInputType.text,
             obscureText: false,
              // textInputAction: TextInputAction.continueAction,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                suffixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                )
              ),
            controller: controllerText,
          ),
        ),
      ),
    );
  }
}
