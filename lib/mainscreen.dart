import 'dart:ui';

import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = 0;
  }

  void _ontapItem(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.of(context).pushNamed('/home');
      } else if (_selectedIndex == 1) {
        Navigator.of(context).pushNamed('/place');
      } else {
        Navigator.of(context).pushNamed('/profile');
      }
    });
  }

  final textst = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orangeAccent,
          onTap: _ontapItem,
          selectedFontSize: 18,
          unselectedFontSize: 16,
          selectedLabelStyle: textst,
          unselectedLabelStyle: textst,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                      'https://i.pinimg.com/564x/be/83/11/be8311f89a90f7d61ebacfb26d8e6b7b.jpg',
                    ),
                    fit: BoxFit.cover,
                    // colorFilter: Brightness.values(90);
                  )),
                  padding: EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            top: 40,
                          ),
                          padding: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Places',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(.6)),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 21,
                                color: Colors.black87.withOpacity(.6),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Manali',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(.8)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'unique geography, formed by a volcanic caldera, offers dramatic cliffs and picturesque sunsets',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(.8)),
                            ),
                          ]),
                        )
                      ]),
                ),

                //body Container
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Best Places',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(.8)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 400,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            placeCard(
                                'https://i.pinimg.com/564x/b5/54/aa/b554aa6fcd798da17bcf82667efe6471.jpg',
                                'Beach House'),
                            placeCard(
                                'https://i.pinimg.com/236x/35/68/6a/35686a4d09c7f0ccadf390b7c8210c1e.jpg',
                                'lake & Hill '),
                            placeCard(
                                'https://i.pinimg.com/236x/26/01/c4/2601c4d273d8a2098f343499cdb32f44.jpg',
                                'Forest Places'),
                            placeCard(
                                'https://i.pinimg.com/564x/ed/1a/ba/ed1aba0b26c371997302978a251de349.jpg',
                                'Boating'),
                            placeCard(
                                'https://i.pinimg.com/564x/fb/dc/bb/fbdcbb40f708b36a569c7fd3e582b4fb.jpg',
                                'Air Ballon Ride'),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }

  Container placeCard(imageurl, name) {
    return Container(
        width: 180,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(imageurl),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              '$name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.7)),
            )
          ],
        ));
  }
}
