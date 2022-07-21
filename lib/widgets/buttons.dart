import 'package:flutter/material.dart';
import 'package:globesity/methods/auth_methods.dart';

button(title, email, password, context) {
  return Container(
    alignment: Alignment.centerRight,
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    child: RaisedButton(
      onPressed: () {
        login(email, password, context);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      textColor: Colors.white,
      padding: const EdgeInsets.all(0),
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 255, 136, 34),
              Color.fromARGB(255, 255, 177, 41)
            ])),
        padding: const EdgeInsets.all(0),
        child: Text(
          title.toString().toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

