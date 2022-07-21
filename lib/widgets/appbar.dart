import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/screens/profile.dart';

import '../constants/users.dart';

AppBar appbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Constant.greenColor,
    title: Row(
      children: const [
        Text(
          "Globesity Foundation",
          style: TextStyle(color: Colors.white),
        ),
        Image(
          image: AssetImage("assets/drawerIcon.png"),
        ),
      ],
    ),
    actions: [
      Users.isLoggedin
          ? IconButton(
              onPressed: () {
                Get.to(const Profile());
              },
              icon: const Icon(Icons.person),
            )
          : Container()
    ],
  );
}

AppBar appbar2(title) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Constant.greenColor,
    title: Row(
      children: [
        const Image(
          image: AssetImage("assets/drawerIcon.png"),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
    actions: [
      Users.isLoggedin
          ? IconButton(
              onPressed: () {
                Get.to(const Profile());
              },
              icon: const Icon(Icons.person),
            )
          : Container()
    ],
  );
}
