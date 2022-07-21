import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/screens/join_the_bootcamp.dart';
import 'package:globesity/webViews/web_view_container.dart';
import 'package:globesity/widgets/appbar.dart';
import 'package:globesity/widgets/bottomNavigation.dart';
import 'package:globesity/widgets/cards.dart';
import 'package:globesity/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/users.dart';

class Starters extends StatefulWidget {
  const Starters({Key? key}) : super(key: key);

  @override
  State<Starters> createState() => _StartersState();
}

class _StartersState extends State<Starters> {
  @override
  Widget build(BuildContext context) {
    print(Users.id);
    return Scaffold(
      appBar: appbar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "The Steps",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Constant.greenColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.purple,
                padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Text(
                  "HOW DO I ACHIEVE HEALTHY LIFESTYLE-WEIGHT?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Complete the START OBESE WEIGHT-ANALYSIS\n2. If approved, Join the Bootcamp for fast results\n3. Report your daily progress for best coaching\n4. Achieve healthy lifestyle-weight get 100% money back",
                      style:
                      TextStyle(color: Constant.greenColor, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    WebViewContainer(
                      Url.weightLoss,
                      "Weight Analyzer",
                    ),
                  );
                },
                child: homeCard("START >>>", "assets/home1.png"),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const JoinBootcamp());
                },
                child: homeCard("JOIN the Bootcamp", "assets/home3.png"),
              ),
              GestureDetector(
                onTap: () async {
                  if (!await launchUrl(
                    Uri.parse(Url.facebook),
                  )) throw 'Could not launch Facebook';
                },
                child: homeCard("To Bootcamp Members", "assets/home2.png"),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    WebViewContainer(
                      Url.freeEducation,
                      "Free Education",
                    ),
                  );
                },
                child: homeCard("Free Education", "assets/home5.png"),
              ),
            ],
          ),
        ),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation()
    );
  }
}
