import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screen/navbar.dart';
import 'package:project/screen/product_category.dart';
import 'package:project/screen/register.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => Mylogin();
}

class Mylogin extends State<loginscreen> {
  final formkeyss = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formkeyss,
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Image.network(
                      'https://cdn.discordapp.com/attachments/493644474619133952/1043133383594737694/cameraicon.png'),
                  height: 150,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.notoSerif(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    )
                ),
                Container(
                    // Username
                    padding: const EdgeInsets.all(10),
                    child: emailFormField()),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: passwordFormField(),
                ),
                TextButton(
                  onPressed: () {},

                  // Forgot Password
                  child: const Text(
                    'Forgot Password',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: submitButtom()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Does not have account?',
                      style: GoogleFonts.notoSerif(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.notoSerif(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue
                      ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const register())); //signup screen
                      },
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        prefixIcon: const Icon(Icons.person),
        labelText: "Username",
          labelStyle: GoogleFonts.notoSerif(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
        hintText: "กรอก Username",
      ),
      validator: (value) {
        if (!validateUser(value!)) {
          return 'Username ไม่ถูกต้อง';
        }
        return null;
      },
      onSaved: (String? value) {
        String email = value!;
        debugPrint(email);
      },
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        prefixIcon: const Icon(Icons.lock),
        labelText: 'Password',
          labelStyle: GoogleFonts.notoSerif(
            fontSize: 15,
            fontWeight: FontWeight.w600
          )
      ),
      validator: (value) {
        if (!validatePass(value!)) {
          return 'รหัสผ่านไม่ถูกต้อง';
        }
      },
    );
  }

  ElevatedButton submitButtom() {
    return ElevatedButton(
      onPressed: () {
        if (formkeyss.currentState!.validate()) {
          formkeyss.currentState!.save();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const homepage()));
        }
      },
      style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 0, 226, 8),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      child: const Text('เข้าสู่ระบบ'),
    );
  }

  bool validateUser(String value) {
    RegExp regex = new RegExp(r'^[a-zA-Z0-9]{6,10}$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validatePass(String value) {
    RegExp regex = new RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    return (!regex.hasMatch(value)) ? false : true;
  }
}
