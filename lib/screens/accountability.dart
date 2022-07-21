import 'package:flutter/material.dart';
import 'package:globesity/widgets/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';
import '../widgets/appbar.dart';
import '../widgets/bottomNavigation.dart';
import '../widgets/drawer.dart';
import '../widgets/image.dart';

class Accountability extends StatefulWidget {
  const Accountability({Key? key}) : super(key: key);

  @override
  State<Accountability> createState() => _AccountabilityState();
}

class _AccountabilityState extends State<Accountability> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar2("Accountability"),
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
              Text(
                "Accountability Post",
                style: primaryHeading(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "1. Allows the coaches to monitor your progress\n2. Allows the group to be inspired by your progress\n3. Allows you to review your progress and not regress \n4. Show the everyone that you are aware of your obesity and you're taking care of it\n5. Talking to others with similar psychological or medical issues\n6. We want you to feel ashamed not to succeed. This post is your commitment for success."),
              const SizedBox(
                height: 10,
              ),
              const Text("Examples: "),
              img("ac1.jpg"),
              img("ac2.jpg"),
              img("ac3.jpg"),
              GestureDetector(
                onTap: () async {
                  if (!await launchUrl(
                    Uri.parse(Url.facebook),
                  )) throw 'Could not launch Facebook';
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Constant.greenColor,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text(
                      "Do Your Post",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
