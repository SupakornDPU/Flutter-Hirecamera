import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screen/product.dart';

import 'transfer.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
    static const MaterialColor white = const MaterialColor(0xFFCFD8DC,
    const <int, Color>{
      50: const Color(0xFFCFD8DC),
      100: const Color(0xFFCFD8DC),
      200: const Color(0xFFCFD8DC),
      300: const Color(0xFFCFD8DC),
      400: const Color(0xFFCFD8DC),
      500: const Color(0xFFCFD8DC),
      600: const Color(0xFFCFD8DC),
      700: const Color(0xFFCFD8DC),
      800: const Color(0xFFCFD8DC),
      900: const Color(0xFFCFD8DC),
    },
  );
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductDetailScreen(),
      theme: ThemeData(
        primarySwatch: white,
      ),
    );
  }
}

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  // สร้างตัวแปรไว้สำหรับโชว์วันที่
  DateTime _dateTime = DateTime.now();

  // สร้าง Method โชว์ Datetime Picker
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(3000))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), 
        onPressed: (() {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const canonscreen()));
        }),
        ),
      ),
      backgroundColor: const Color(0xFFECEFF1),
      body: SafeArea(

        // ListView สำหรับข้อมูลที่เกินหน้าจอ ออกมา
        child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Container สำหรับใส่รูปภาพ
              Container(
                decoration: const BoxDecoration(color: Color(0xFFCFD8DC)),
                height: 180,
                child: Image.network(
                  'https://www.lenslineup.com/wp-content/uploads/2020/07/Canon-eos-r-body.png',
                  width: 180,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // ชื่อและรุ่นของกล้อง
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                  width: 200,
                  height: 40,
                  child: const Text(
                    'Canon EOS R Body',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              // แบรนด์สินค้า
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xFFECEFF1)),
                  width: 200,
                  height: 40,
                  child: const Text(
                    'แบรนด์ : Canon',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // รายละเอียดสินค้า
              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                        "• ขนาดเซ็นเซอร์ : Full-Frame Stacked CMOS Sensor 24.2 ล้านพิกเซล"),
                    const Text("• ถ่ายภาพต่อเนื่อง : 20 ภาพต่อวินาที"),
                    const Text("• กันสั่น 5 แกน"),
                    const Text("• จอ 3.0″ Touch-Screen 1,440k-Dot ปรับก้มเงยได้"),
                    const Text("• ช่องมองภาพ 3.68M-Dot OLED Blackout-Free"),
                    const Text("• Video : UHD 4K 30P ,1080P120"),
                    const Text("• ISO 100-51200 (Extended Mode 50-204800)"),
                    const Text("• จุดโฟกัส : Phase Detection 693 จุด"),
                    const Text("• ชิปประมลผล : BIONZ X & Front-End LSI"),
                    const Text("• Wi-Fi / Bluetooth"),
                    const Text("• น้ำหนัก : 673 กรัม"),
                    const Text("• Memory Slot : Dual SD Card"),
                    const Text("• แบตเตอรี่ : NP-FZ100"),
                    const Text("• ขนาด : 126.9 x 95.6 x 73.7 มม"),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // ราคาสินค้าต่อวัน
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  decoration: const BoxDecoration(),
                  height: 40,
                  child: const Text(
                    '฿ 1,000 บาท/วัน',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFCFD8DC),
                          borderRadius: BorderRadius.circular(5)),
                      height: 180,
                      width: 384,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // ? วันที่รับสินค้า
                                // ! Text
                                const Text(
                                  "วันที่รับสินค้า",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),

                                // ! DatePicker
                                MaterialButton(
                                  onPressed: _showDatePicker,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Row(
                                      children: [
                                        // ! ข้อความโชว์วันที่
                                        Text(
                                          _dateTime.day.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),

                                        // ! ข้อความโชว์เดือน
                                        Text(
                                          _dateTime.month.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),

                                        // ! ข้อความโชว์ปี
                                        Text(
                                          _dateTime.year.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // ? วันที่คืนสินค้า
                                // ! Text
                                const Text(
                                  "วันที่คืนสินค้า",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),

                                // ! DatePicker
                                MaterialButton(
                                  onPressed: _showDatePicker,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Row(
                                      children: [
                                        // ! ข้อความโชว์วันที่
                                        Text(
                                          _dateTime.day.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),

                                        // ! ข้อความโชว์เดือน
                                        Text(
                                          _dateTime.month.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),

                                        // ! ข้อความโชว์ปี
                                        Text(
                                          _dateTime.year.toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                submitButtom()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }

  ElevatedButton submitButtom() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => const TransferScreen())
        );
      },
      style: ElevatedButton.styleFrom(primary: Colors.green[800]),
      child: const Text(
        'เช่าสินค้า',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
