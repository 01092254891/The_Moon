import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_moon/screenes/second%20page.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (SafeArea(
        child: Container(
          color: Colors.teal,
          child: Column(
            children: [
              Spacer(flex: 1),
              Image.asset("assets/first _background.jpg"),
              Spacer(flex: 2),
              const Text(
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.brown,
                  ),
                  "متاكد انك عايز تشوف القمر"),
              Spacer(flex: 4),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          CupertinoColors.activeGreen)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text(
                      style: TextStyle(color: Colors.black, fontSize: 25),
                      "طيب تعالي")),
              Spacer(flex: 3),
            ],
          ),
        ),
      )),
    );
  }
}
