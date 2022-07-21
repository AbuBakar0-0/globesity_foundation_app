import 'package:flutter/material.dart';

img(name) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    child: Align(
      alignment: Alignment.center,
      child: Image(
        image: AssetImage("assets/" + name),
      ),
    ),
  );
}