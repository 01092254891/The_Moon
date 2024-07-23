import 'package:flutter/material.dart';
import 'package:the_moon/screenes/details_moon/details_moon.dart';
import 'package:the_moon/screenes/moon_page/moon_page.dart';
import 'package:the_moon/screenes/photo_moon/photo_moon.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/moon.jpg"), fit: BoxFit.cover)),
      child: (SafeArea(
          child: ListView(children: [
        Card(
          color: Colors.purple,
          child: ListTile(
            splashColor: Colors.red,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MoonPage(
                            cameras: [],
                          )));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "                         القمر "),
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.deepPurple,
          child: ListTile(
            splashColor: Colors.amberAccent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PhotoMoon()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "                      صور القمر "),
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.blue,
          child: ListTile(
            splashColor: Colors.red,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsMoon()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "                    وصف القمر "),
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        )
      ]))),
    );
  }
}
