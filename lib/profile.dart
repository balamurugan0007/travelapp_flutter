import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                size: 38,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/main');
              },
            ),
            Container(
              height: 320,
              child: Center(
                  child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(180),
                      child: Image(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/50/2a/44/502a4421c099e50c330047eb53cc06d1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Traveler Yogi',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Colors.black.withOpacity(.8)),
                  )
                ],
              )),
            ),
            Divider(
              height: 4,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print('fav');
                    },
                    style: OutlinedButton.styleFrom(
                      elevation: .6,
                    ),
                    child: Text(
                      'Memories',
                      selectionColor: Colors.red,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.pink),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('fav');
                    },
                    style: OutlinedButton.styleFrom(
                      elevation: .6,
                    ),
                    child: Text(
                      'Future Distination',
                      selectionColor: Colors.red,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.withRed(50)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
