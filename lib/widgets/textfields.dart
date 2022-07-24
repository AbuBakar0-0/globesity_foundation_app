import 'package:flutter/material.dart';

Widget textField(controller, context, obs) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      obscureText: obs,
      controller: controller,
      cursorColor:Colors.black,
      style:const TextStyle(
        color: Colors.black,
      ),
      decoration:const InputDecoration(
        contentPadding:  EdgeInsets.all(10),
        fillColor: Colors.black,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}
