import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screen/product.dart';

class Mymenu extends StatelessWidget {
  const Mymenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mymenus(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

class Mymenus extends StatelessWidget {
  const Mymenus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEDECF2),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: <Widget>[
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
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'หมวดหมู่สินค้า',
                    style: GoogleFonts.kanit(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                  ),
                ),
                // คำสั่งเพื่อใช้ onTap
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => canonscreen())),
                  child: Container(
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
                        Image.network(
                          'https://www.lenslineup.com/wp-content/uploads/2020/07/3-canon-300x136.png',
                          width: 100,
                        ),
                        Text(
                          "กล้องเลนส์ Canon",
                          style: GoogleFonts.kanit(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
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
                      Image.network(
                        'https://www.lenslineup.com/wp-content/uploads/2020/07/3-nikon1-300x136.png',
                        width: 100,
                      ),
                      Text(
                        "กล้องเลนส์ Nikon",
                        style: GoogleFonts.kanit(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 40,
                      ),
                    ],
                  ),
                ),
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
                      Image.network(
                        'https://www.lenslineup.com/wp-content/uploads/2020/07/3-fujifilm-update-t2-500x226.png',
                        width: 100,
                      ),
                      Text(
                        "กล้องเลนส์ Fujifilm",
                        style: GoogleFonts.kanit(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 40,
                      ),
                    ],
                  ),
                ),
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
                      Image.network(
                        'https://www.lenslineup.com/wp-content/uploads/2020/07/Leica-logo-3-500x226.png',
                        width: 100,
                      ),
                      Text(
                        "กล้องเลนส์ Leica",
                        style: GoogleFonts.kanit(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                // คำสั่งเพื่อใช้ onTap
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sonyscreen())),
                  child: Container(
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
                        Image.network(
                          'https://www.lenslineup.com/wp-content/uploads/2020/07/3-sony-update-500x226.png',
                          width: 100,
                        ),
                        Text(
                          "กล้องเลนส์ Sony",
                          style: GoogleFonts.kanit(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                
                // คำสั่งเพื่อใช้ onTap
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => goproscreen())),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10) // !กำหนด borderRadius ให้ขอบโค้งมน
                        ),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'https://www.lenslineup.com/wp-content/uploads/2020/11/nn3-v4-500x226.png',
                          width: 100,
                        ),
                        Text(
                          "กล้องเลนส์ Gopro",
                          style: GoogleFonts.kanit(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
