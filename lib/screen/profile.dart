import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppCal extends StatelessWidget {
  const MyAppCal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalApp()
    );
  }
}

class CalApp extends StatelessWidget {
  const CalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEDECF2),
        body: Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 4, right: 4, top: 30),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Color.fromARGB(255, 106, 106, 106),
                  child: Icon(Icons.person, color: Colors.white, size: 70),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    child: const Text('Hire Camera'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 106, 106, 106),
                      onPrimary: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {},
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(
                      10,
                    ) // !กำหนด borderRadius ให้ขอบโค้งมน
                    ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 70,
                    ),
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 40,
                    ),
                  ],
                ),
              ), // !Container จะแสดงให้เห็นก็ต่อเมื่อเรากำหนดขนาดความสูง
            ],
          ),
        ),
      ),
    );
  }
}
