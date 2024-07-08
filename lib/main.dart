import 'package:flutter/material.dart';
import 'package:travelapp/mainscreen.dart';
import 'package:travelapp/placeScreen.dart';
import 'package:travelapp/profile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Myapp(),
      '/main': (context) => const Mainscreen(),
      '/profile': (context) => const ProfileScreen(),
      '/place': (context) => const PlaceScreen(),
    },
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/back.png',
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Column(children: <Widget>[
                Text(
                  'Adventure is worthwhile',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.black.withOpacity(.8)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Traveling is not something you’re good at. It’s something you do. Like breathing. So travel Today',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.7)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    print('clicked');
                    Navigator.of(context).pushNamed('/main');
                  },
                  child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.withOpacity(.94),
                      ),
                      child: Center(
                        child: Text(
                          'Start Journey',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
