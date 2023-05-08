import 'package:flutter/material.dart';
import 'package:flutter_application_demo/main.dart';
import 'package:flutter_application_demo/globals.dart' as globals;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                child:
                    Text('Hi ' + globals.userName + ". \nNice to see you back!",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center)),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color.fromARGB(255, 1, 150, 63),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
                child: Text('Log out'),
              ),
            )
          ]),
    );
  }
}
