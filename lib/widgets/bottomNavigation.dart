import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/screens/daily_routine.dart';
import 'package:globesity/screens/join_the_bootcamp.dart';
import 'package:globesity/screens/my_progress.dart';
import 'package:globesity/screens/starters.dart';

import '../constants/users.dart';
import '../methods/auth_methods.dart';

bottomNavigation() {
  return !Users.isLoggedin
      ? Container(
          color: Constant.greenColor,
          height: 80,
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Text(
                    "Obese Weight Analysis",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(const JoinBootcamp());
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.group_add,
                      color: Colors.white,
                    ),
                    Text(
                      "Join the Bootcamp",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      : Container(
          color: Constant.greenColor,
          height: 80,
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(const DailyRoutine());
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.medication_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Daily Routine",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const MyProgress());
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                    Text(
                      "My Progress",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const JoinBootcamp());
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.group_add,
                      color: Colors.white,
                    ),
                    Text(
                      "Join the Bootcamp",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
}

loginNavigation(email, password, context) {
  return Container(
    color: Constant.greenColor,
    height: 80,
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Get.offAll(const Starters());
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            login(email, password, context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}
