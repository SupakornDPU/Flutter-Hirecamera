import 'package:flutter/material.dart';
import 'package:project/screen/product_category.dart';

import 'product_details.dart';

// ! Cannon

class canonscreen extends StatefulWidget {
  const canonscreen({super.key});

  @override
  State<canonscreen> createState() => _canonscreenState();
}

class _canonscreenState extends State<canonscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), 
        onPressed: (() {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Mymenu()));
        }),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            color: Color(0xFFECEFF1),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.network(
                        'https://www.lenslineup.com/wp-content/uploads/2020/07/3-canon-300x136.png',
                        height: 80,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            color: Color(0xFFCFD8DC),
            child: const Text(
              'รายการสินค้า',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Column คลุมทั้งหน้าให้ข้อมูลเรียงลงมาเป็นแถว
            child: Column(
              children: [
                // Row อยู่ใต้ Column เพื่อกำหนดให้ข้อมูลอยู่ ซ้าย และ ขวา
                Row(
                  //row ที่ 1 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails())),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF3F4E4F)),
                        height: 150,
                        width: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.lenslineup.com/wp-content/uploads/2020/07/Canon-eos-r-body.png',
                              height: 150,
                            )
                          ],
                        ),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3F4E4F)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/09/canon-eos-r6.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 1 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''Canon EOS R Body 
B1,000.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''Canon EOS R6 Body
B1,400.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 2 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3F4E4F)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/5dsr.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3F4E4F)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/74-mark-II.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 2 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''Canon EOS 5Ds R Body
B1,200.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''Canon EOS 7D MarkII 
B650.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 3 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3F4E4F)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/m200.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3F4E4F)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/m100-2.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  //row ที่ 2 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''Canon EOS M200
B350.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''Canon EOS M100
B300.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

// ! Gopro
class goproscreen extends StatefulWidget {
  const goproscreen({super.key});

  @override
  State<goproscreen> createState() => _goproscreenState();
}

class _goproscreenState extends State<goproscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            color: Color(0xFFECEFF1),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.network(
                        'https://www.lenslineup.com/wp-content/uploads/2020/11/nn3-v4-500x226.png',
                        height: 80,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            color: Color(0xFFCFD8DC),
            child: const Text(
              'รายการสินค้า',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Column คลุมทั้งหน้าให้ข้อมูลเรียงลงมาเป็นแถว
            child: Column(
              children: [
                // Row อยู่ใต้ Column เพื่อกำหนดให้ข้อมูลอยู่ ซ้าย และ ขวา
                Row(
                  //row ที่ 1 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.goprolineup.com/wp-content/uploads/2022/09/gopro-hero-11-rental.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.goprolineup.com/wp-content/uploads/2021/09/gopro-heo10.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 1 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''GoPro HERO11 Black
B500.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''GoPro HERO10 Black
B450.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 2 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.goprolineup.com/wp-content/uploads/2020/09/gopro-hero9-main.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.goprolineup.com/wp-content/uploads/2014/11/MAX-MAX.png',
                            height: 125,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 2 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''GoPro HERO09 Black
B400.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''GoPro MAX 360
B500.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

// ! Sony
class sonyscreen extends StatefulWidget {
  const sonyscreen({super.key});

  @override
  State<sonyscreen> createState() => _sonyscreenState();
}

class _sonyscreenState extends State<sonyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            color: Color(0xFFECEFF1),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.network(
                        'https://www.lenslineup.com/wp-content/uploads/2020/07/3-sony-update-500x226.png',
                        height: 80,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            color: Color(0xFFCFD8DC),
            child: const Text(
              'รายการสินค้า',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Column คลุมทั้งหน้าให้ข้อมูลเรียงลงมาเป็นแถว
            child: Column(
              children: [
                // Row อยู่ใต้ Column เพื่อกำหนดให้ข้อมูลอยู่ ซ้าย และ ขวา
                Row(
                  //row ที่ 1 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/10/sony-a7siii-1.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/sony-a7riii-upper.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 1 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''Sony A7SIII Body
B1,800.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''Sony A7RIII Body
B1,600.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 2 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/sony-a9.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/sony2.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 2 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''Sony A9 Body
B1,500.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''Sony a5100
B350.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  //row ที่ 3 รูปภาพ
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container ซ้าย
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/10/sony-a7c-1.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),

                    // Container ขวา
                    Container(
                      decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                      height: 150,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.lenslineup.com/wp-content/uploads/2020/07/sony-a6600.png',
                            height: 150,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  //row ที่ 2 ตัวอักษร
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container ซ้าย
                    Container(
                      width: 200,
                      child: const Text(
                        '''Sony A7C Body
B600.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                    // Container ขวา
                    Container(
                      child: const Text(
                        '''Sony A6600 Body
B700.00 บาท/วัน''',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
