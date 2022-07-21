import 'package:flutter/material.dart';

import '../constants/constants.dart';

safeText(text) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Text(text),
  );
}

primaryHeading() {
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Constant.greenColor,
  );
}

greenHeading() {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.green,
  );
}

redHeading() {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
}

yellowHeading() {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.yellow,
  );
}


blueHeading() {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
}

redText() {
  return const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
}

yellowText() {
  return const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.yellow,
  );
}
darkBlueText() {
  return const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.blueAccent,
  );
}

pinkText() {
  return const TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xfff4a4ec),
    fontSize: 20
  );
}

greyText(){
  return const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 20
  );
}

blueText(){
  return const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
}



