// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import 'order.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      theme: ThemeData(
       primarySwatch: Colors.grey,
      ),
      home: const Transfer(),
    );
  }
}

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {

  final formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ชำระเงิน"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  nameformField(),
                  const SizedBox(
                    height: 15,
                  ),
                  emailFormField(),
                  const SizedBox(
                    height: 15,
                  ),
                  mobileformField(),
                  const SizedBox(
                    height: 15,
                  ),
                  addressformField(),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      primary: Color.fromARGB(255, 132, 132, 132),
                    ),
                    child: Text("Choose file"),
                    onPressed: ()  {
                      pickFile();
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                        'images/qr.jpg',
                        width: 300,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  submitBotton(),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

  // ! Name Input
  Widget nameformField(){
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        prefixIcon: Icon(Icons.person),
        labelText: "ชื่อ-นามสกุล",
        hintText: "กรอก ชื่อ-นามสกุล",
      ),
      // ! Validate
      validator: (value) {
        if (!validateName(value!)) {
          return 'เบอร์โทรศัพท์ไม่ถูกต้อง';
        }
        return null;
      },
    );
  }


  // ! Email Input
  Widget emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        prefixIcon: Icon(Icons.alternate_email_rounded),
        labelText: "Email",
        hintText: "กรอก อีเมล",
      ),
      validator: (value) {
        if (!validateUser(value!)) {
          return 'Email ไม่ถูกต้อง';
        }
        return null;
      },
      onSaved: (String? value) {
        String email = value!;
        debugPrint(email);
      },
    );
  }

  // ! MobileNumber Input
  Widget mobileformField(){
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        prefixIcon: Icon(Icons.local_phone),
        labelText: "เบอร์โทรศัพท์",
        hintText: "กรอก เบอร์โทร",
      ),
      // ! Validate
      validator: (value) {
        if (!validateMobilePhone(value!)) {
          return 'เบอร์โทรศัพท์ไม่ถูกต้อง';
        }
        return null;
      },
    );
  }

    // ! Address Input
  Widget addressformField(){
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        prefixIcon: Icon(Icons.pin_drop),
        labelText: "ที่อยู่",
        hintText: "กรอก ที่อยู่",
      ),
      // ! Validate
      validator: (value) {
        if (!validateAddress(value!)) {
          return 'เบอร์โทรศัพท์ไม่ถูกต้อง';
        }
        return null;
      },
    );
  }

  // ! Button
  ElevatedButton submitBotton(){
    return ElevatedButton(
      onPressed: (() {
        Navigator.push(
              context, MaterialPageRoute(builder: (context) => OrderScreen()));
        // if (formkey.currentState!.validate()) {
        //   formkey.currentState!.save();
        // }
      }),
      child: const Text('ชำระเงิน',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      // ! ตกแต่งปุ่ม ElevatedButton
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(400, 55),
        backgroundColor: const Color.fromARGB(255, 51, 255, 0),
        shape: const StadiumBorder()
      ),
    );
  }

  bool validateName(String value) {
  RegExp regex = new RegExp(r'.');
  return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateUser(String value) {
  RegExp regex = new RegExp(r'^[a-zA-Z0-9]{6,10}$');
  return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateMobilePhone(String value){
    RegExp regex = new RegExp(r'^0+\d{9}');
    return (!regex.hasMatch(value))? false : true;
  }

  bool validateAddress(String value) {
  RegExp regex = new RegExp(r'.');
  return (!regex.hasMatch(value)) ? false : true;
  }

  void pickFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image
    );
  }
}