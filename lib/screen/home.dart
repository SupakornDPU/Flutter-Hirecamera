import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePages(),
//     );
//   }
// }

class MyHomePages extends StatelessWidget {
  const MyHomePages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [

                // ! Banner 1
                Container(
                  decoration: 
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 212, 212, 212),
                      ),
                  height: 120,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text(
                              "ยินดีต้อนรับเข้าสู่บริการ",
                              style: GoogleFonts.kanit(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                            ),
                            Text(
                              "เช่าอุปกรณ์ถ่ายทำ",
                              style: GoogleFonts.kanit(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://cdn.discordapp.com/attachments/493644474619133952/1039172885673148466/camerabanner1.png',
                              height: 80,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                // ! Banner 2
                Container(
                  decoration: 
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black87
                    ),
                  height: 120,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.lenslineup.com/wp-content/uploads/2020/07/3-sony-update-500x226.png',
                              height: 70,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sony",
                              style: GoogleFonts.kanit(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                            Text("ตอบโจทย์ทุกความต้องการ",
                              style: GoogleFonts.kanit(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),
                            ),
                            Text("ของคุณ",
                              style: GoogleFonts.kanit(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                // ! Banner 3
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 212, 212, 212),
                  ),
                  height: 120,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.lenslineup.com/wp-content/uploads/2020/11/nn3-v4-500x226.png',
                              height: 70,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "GoPro",
                              style: GoogleFonts.kanit(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                            ),
                            Text(
                              "กล้องแอคชั่นแคมที่ทรงพลังและ",
                              style: GoogleFonts.kanit(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                              ),
                            ),
                            Text(
                              "ใช้งานได้หลากหลายมากที่สุดในโลก",
                              style: GoogleFonts.kanit(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                // ! Banner 4
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black87
                  ),
                  height: 120,
                  child: Row(
                    children: [
                      // ! ข้อความ
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Lens",
                              style: GoogleFonts.kanit(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              "เลนส์ที่เหมาะกับคุณ",
                              style: GoogleFonts.kanit(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ! รูปภาพ
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://cdn.discordapp.com/attachments/493644474619133952/1043132852109316147/lens.png',
                              height: 70,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
