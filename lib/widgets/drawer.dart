import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/authScreens/login.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/screens/accountability.dart';
import 'package:globesity/screens/healthy_lifestyle.dart';
import 'package:globesity/screens/join_the_bootcamp.dart';
import 'package:globesity/screens/legal_contract.dart';
import 'package:globesity/screens/starters.dart';
import 'package:globesity/webViews/web_view_container.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/users.dart';

Widget drawer(context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage('assets/logo.png'),
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          "GLOBESITY FOUNDATION",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 5,
                ),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Get.offAll(const Starters());
                      },
                      leading: const Icon(Icons.flash_on),
                      title: const Text(
                        "Starters",
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(const JoinBootcamp());
                      },
                      leading: const Icon(Icons.group_add_rounded),
                      title: const Text(
                        "JOIN the Bootcamp",
                      ),
                    ),
                    ListTile(
                      onTap: () async {
                        Navigator.pop(context);
                        if (!await launchUrl(
                          Uri.parse(Url.facebook),
                        )) throw 'Could not launch Facebook';
                      },
                      leading: const Icon(Icons.thumb_up_alt_rounded),
                      title: const Text(
                        "Facebook Group",
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(
                          WebViewContainer(
                            Url.freeEducation,
                            "Free Education",
                          ),
                        );
                      },
                      leading: const Icon(Icons.menu),
                      title: const Text(
                        "Free Education",
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Get.offAll(const HealthyLifeStyle());
                      },
                      leading: const Icon(Icons.menu),
                      title: const Text(
                        "Healthy Lifestyle",
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(const LegalContract());
                      },
                      leading: const Icon(Icons.account_balance_outlined),
                      title: const Text(
                        "Legal-About-Contact",
                      ),
                    ),
                    Users.isLoggedin
                        ? Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Get.to(
                                    WebViewContainer(
                                      Url.foodEducation,
                                      "Food Education",
                                    ),
                                  );
                                },
                                leading: const Icon(Icons.book_outlined),
                                title: const Text(
                                  "Food Education",
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Get.to(
                                    WebViewContainer(
                                      Url.healthyRecipes,
                                      "Healthy Recipes",
                                    ),
                                  );
                                },
                                leading: const Icon(Icons.menu),
                                title: const Text(
                                  "Healthy Recipes",
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Get.offAll(const Accountability());
                                },
                                leading: const Icon(Icons.menu),
                                title: const Text(
                                  "Accountability Post",
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  //Get.to(const Login());
                                },
                                leading: const Icon(Icons.menu),
                                title: const Text(
                                  "Daily Progress Report",
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Users.isLoggedin=false;
                                  Get.offAll(const Starters());
                                },
                                leading: const Icon(Icons.logout),
                                title: const Text("Logout"),
                              ),
                            ],
                          )
                        : ListTile(
                            onTap: () {
                              Navigator.pop(context);
                              Get.offAll(const Login());
                            },
                            leading: const Icon(Icons.logout),
                            title: const Text("Login"),
                          ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Get.off(WebViewContainer(Url.about, "About"));
                      },
                      leading: const Icon(Icons.info_outline),
                      title: const Text(
                        "About",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
