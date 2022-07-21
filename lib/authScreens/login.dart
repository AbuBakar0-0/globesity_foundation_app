import 'package:flutter/material.dart';
import 'package:globesity/widgets/drawer.dart';
import 'package:globesity/widgets/textfields.dart';

import '../constants/constants.dart';
import '../widgets/bottomNavigation.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    email.text = 'Reneelundy@outlook.com';
    password.text = 'Hello\$123';
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Image(
              image: AssetImage("assets/drawerIcon.png"),
            ),
            Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Constant.greenColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 40,),
            const Text(
              "Login to access coaching, dietitians, supplements, food aid and healthy lifestyle weight tips",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40,),
            const Text("Email*"),
            textField(email, context, false),
            const SizedBox(height: 20,),
            const Text("Password*"),
            textField(password, context, true),
          ],
        ),
      ),
      bottomNavigationBar: loginNavigation(email.text,password.text,context),
      drawer: drawer(context),
    );
  }
}

