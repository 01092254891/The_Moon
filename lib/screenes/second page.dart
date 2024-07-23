import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_moon/screenes/details_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: Container(
        color: Colors.teal,
        child: Column(
          children: [
            Spacer(flex: 1),
            Image.asset("assets/second.jpg"),
            Spacer(flex: 2),
            const Text(
              style: TextStyle(fontSize: 40, color: Colors.brown),
              """
 معقول مش عارف مين ولسه مكمل """,
            ),
            Text(style: TextStyle(fontSize: 40, color: Colors.brown), "اتفضل"),
            Spacer(flex: 4),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(CupertinoColors.activeGreen)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsPage()));
                },
                child: Text(
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    " خلاص قربنا")),
            Spacer(flex: 3),
          ],
        ),
      ),
    ));
  }
}
