import 'package:flutter/material.dart';

indicator(msg,context){
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Row(
          children: [
            msg.toString()=="LOGGING IN"?const CircularProgressIndicator():Container(),
            const SizedBox(
              width: 10,
            ),
            Text(msg.toString()),
          ],
        ),
      );
    },
  );
}