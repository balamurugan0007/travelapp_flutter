import 'package:flutter/material.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
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
    return const Scaffold(
        bottomNavigationBar: const BottomNavigationBar(
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
        body: Text('hello'));
  }
}
