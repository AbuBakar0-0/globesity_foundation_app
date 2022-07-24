import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:globesity/widgets/appbar.dart';
import 'package:globesity/widgets/cards.dart';

import '../constants/constants.dart';
import '../constants/users.dart';
import '../widgets/textfields.dart';
import 'change_password.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = Users.password;
    return Scaffold(
      appBar: appbar2("Profile"),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              profileCard(context),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Constant.greenColor.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              const Text("Password"),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 220,
                                child: TextFormField(
                                  obscureText: false,
                                  controller: controller,
                                  cursorColor: Colors.black,
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    fillColor: Colors.black,
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        Get.to(const ChangePassword());
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          profileBottom("Age", Users.age),
                          profileBottom("Daily Activity", Users.dailyActivity)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          profileBottom("Height", Users.height),
                          profileBottom(
                              "Weight to Lose", Users.weighttolose + " lbs"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          profileBottom("Weight 6 months ago", Users.weight6),
                          profileBottom(
                              "Healthy Weight", Users.healthy + " lbs")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          profileBottom("Start Weight", Users.weight + ' lbs'),
                          profileBottom(
                              "Total Weight Loss", Users.weightLost + " lbs")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
