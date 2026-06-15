import 'package:counterapp/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class count extends StatelessWidget {
  const count({super.key});

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
              context.watch<CountController>().count.count.toString(),
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
                      context.read<CountController>().decrement();
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
                      context.read<CountController>().increment();
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
                context.read<CountController>().reset();
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
