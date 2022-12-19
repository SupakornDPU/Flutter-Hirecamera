import 'package:flutter/material.dart';
import 'package:project/screen/login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<register> {
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final regiskey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: regiskey,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Fill in yur details to apply for membership',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Container(
                    //name
                    padding: const EdgeInsets.all(10),
                    child: regisname()),
                Container(
                    //phone
                    padding: const EdgeInsets.all(10),
                    child: regisphone()),
                Container(
                    // address
                    padding: const EdgeInsets.all(10),
                    child: regisAddress()),
                Container(
                    //Username
                    padding: const EdgeInsets.all(10),
                    child: regisUser()),
                Container(
                    //Password
                    padding: const EdgeInsets.all(10),
                    child: regisPassword()),
                Container(
                    //EnterPassword
                    padding: const EdgeInsets.all(10),
                    child: regisEnterpassword()),
                Container(
                    //Bottomregister
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: regisButtom()),
              ],
            ),
          )),
    );
  }

  Widget regisname() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        prefixIcon: Icon(Icons.perm_contact_cal),
        labelText: "Name",
        hintText: "Enter Name",
      ),
      validator: (value) {
        if (!validateName(value!)) {
          return 'กรุณากรอกชื่อไม่เกิน 20 ตัวอักษร';
        }
      },
    );
  }

  Widget regisphone() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        labelText: "Mobile No",
        prefixIcon: Icon(Icons.phone),
      ),
      validator: (value) {
        if (!validatenumphone(value!)) {
          return 'เบอร์โทรศัพท์ไม่ถูกต้อง';
        }
        return null;
      },
    );
  }

  Widget regisAddress() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        labelText: "Address",
        prefixIcon: Icon(Icons.location_pin),
      ),
      validator: (value) {
        if (!validateaddress(value!)) {
          return 'กรุณากรอก Address';
        }
        return null;
      },
    );
  }

  Widget regisUser() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        prefixIcon: Icon(Icons.person),
        labelText: "UserName",
        hintText: "Enter UserName 6 - 10 character",
      ),
      validator: (value) {
        if (!validateUser(value!)) {
          return 'Username ไม่ถูกต้อง';
        }
      },
    );
  }

  Widget regisPassword() {
    return TextFormField(
      obscureText: true,
      controller: _pass,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        labelText: "Enter Password",
        hintText: "Enter Password Ex.(Ee123456)",
        prefixIcon: Icon(Icons.lock),
      ),
      validator: (value) {
        if (!validatepass(value!)) {
          return 'กรุณากรอกรหัสผ่านอย่างน้อย 8 ตัวอักษร';
        }
      },
    );
  }

  Widget regisEnterpassword() {
    return TextFormField(
      obscureText: true,
      controller: _confirmPass,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        labelText: "Enter Password",
        prefixIcon: Icon(Icons.lock),
      ),
      validator: (value) {
        if (value != (_pass.text)) {
          return 'กรุณากรอกรหัสผ่านให้ตรงกัน';
        }
      },
    );
  }

  ElevatedButton regisButtom() {
    return ElevatedButton(
      onPressed: () {
        if (regiskey.currentState!.validate()) {
          regiskey.currentState!.save();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => loginscreen()));
        }
      },
      child: Text('Register'),
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 0, 226, 8),
          fixedSize: const Size(400, 50),
          shape: StadiumBorder()),
    );
  }

  bool validateName(String value) {
    RegExp regex = new RegExp(r'^[a-zA-Z]{6,20}$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validatenumphone(String value) {
    RegExp regex = new RegExp(r'^0+\d{9}$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateaddress(String value) {
    RegExp regex = new RegExp(r'^.{1,50}$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateUser(String value) {
    RegExp regex = new RegExp(r'^[a-zA-Z0-9]{6,10}$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateEmail(String value) {
    RegExp regex = new RegExp(r'[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validatepass(String value) {
    RegExp regex = new RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,12}$');
    return (!regex.hasMatch(value)) ? false : true;
  }
}
