import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

String output = "0";

class _CounterState extends State<Counter> {
  int count = 0;
  void buttonpressed(String value) {
    setState(() {
      if (value == "+") {
        count++;
      } else if (value == "-") {
        count--;
      } else if (value == "Reset") {
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              "Counter App",
              style: GoogleFonts.aBeeZee(
                color: Colors.black,
                fontWeight: .bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "$count",
              style: GoogleFonts.aBeeZee(
                color: Colors.black,
                fontSize: 50,
                fontWeight: .bold,
              ),
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      buttonpressed("-");
                    },
                    child: Text("-"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      buttonpressed("+");
                    },
                    child: Text("+"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                buttonpressed("Reset");
              },
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
