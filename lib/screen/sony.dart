import 'package:flutter/material.dart';

class sonyscreen extends StatefulWidget {
  const sonyscreen({super.key});

  @override
  State<sonyscreen> createState() => _sonyscreenState();
}

class _sonyscreenState extends State<sonyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
