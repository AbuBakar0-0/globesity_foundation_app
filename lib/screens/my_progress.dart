import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/screens/profile.dart';
import 'package:globesity/widgets/bottomNavigation.dart';
import 'package:globesity/widgets/drawer.dart';
import 'package:globesity/widgets/progress_indicator.dart';
import 'package:globesity/widgets/textfields.dart';

import '../constants/constants.dart';
import '../constants/users.dart';
import '../methods/user_methods.dart';
import '../widgets/appbar.dart';

class MyProgress extends StatefulWidget {
  const MyProgress({Key? key}) : super(key: key);

  @override
  State<MyProgress> createState() => _MyProgressState();
}

class _MyProgressState extends State<MyProgress> {
  TextEditingController controller = TextEditingController();

  bool obs = true;
  IconData icon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar2("My Progress"),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Today's Weight"),
                  textField(controller, context, false),
                  GestureDetector(
                    onTap: () async{
                      indicator("Updating", context);
                      var x=(int.parse(Users.weight)-int.parse(controller.text)).toString();
                      Users.weightLost=x.toString();
                      await updateProgress(x.toString());
                      Navigator.pop(context);
                      Get.to(const Profile());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Constant.greenColor,
                      padding: const EdgeInsets.all(20),
                      child:const Center(
                        child: Text(
                          "Update Weight",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
