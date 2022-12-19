import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       primarySwatch: Colors.grey,
      ),
      home: const Order(),
    );
  }
}

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          centerTitle: true,
          title: Text('Order',
            style: GoogleFonts.kanit(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              // ! Container 1
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: 
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 212, 212, 212)
                    ),
                    height: 120,
                    child: Row(
                      children: [
        
                        // รูปภาพ
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.network(
                                'https://www.lenslineup.com/wp-content/uploads/2020/07/3-sony-update-500x226.png',
                                height: 45,
                          ),
                        ),
        
                        // ข้อความ
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Sony A7SIII Body",
                              style: GoogleFonts.kanit(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("฿1,800.00 บาท/วัน",
                              style: GoogleFonts.kanit(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("x1",
                              style: GoogleFonts.kanit(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
        
                        // สถานะการชำระเงิน
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: 
                              BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.brown[200]
                              ),
                              height: 38,
                              width: 100,
                              child: Center(
                                child: Text("รอการยืนยัน",
                                  style: GoogleFonts.kanit(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),
                                )
                              ),
                          ),
                        )
                      ],
                    ),
                ),
              ),
        
              // ! Container 2
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: 
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 212, 212, 212)
                    ),
                    height: 120,
                    child: Row(
                      children: [
        
                        // รูปภาพ
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.network(
                                'https://www.lenslineup.com/wp-content/uploads/2020/07/3-sony-update-500x226.png',
                                height: 45,
                          ),
                        ),
        
                        // ข้อความ
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Sony A7SIII Body",
                              style: GoogleFonts.kanit(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("฿1,800.00 บาท/วัน",
                              style: GoogleFonts.kanit(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("x1",
                              style: GoogleFonts.kanit(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
        
                        // สถานะการชำระเงิน
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: 
                              BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.brown[200]
                              ),
                              height: 38,
                              width: 100,
                              child: Center(
                                child: Text("รอการยืนยัน",
                                  style: GoogleFonts.kanit(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),
                                )
                              ),
                          ),
                        )
                      ],
                    ),
                ),
              ),
            ],
          ),
        )
    );
  }
}