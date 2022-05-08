import 'package:flutter/material.dart';
import 'package:flutter_app_medical/constant/style.dart';

import 'button.dart';
showDialogWarning(
    BuildContext context, {
      required String text,
      required Function ontap,
    }) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 10,
        shape:  const RoundedRectangleBorder(
            side: BorderSide(color: Colors.blueAccent, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        content: Container(
            width: sizeFromWidth(context, 1),
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Center(
              child: Text(
                text,
              //  style: labelStyle3,
              ),
            )),
        actions: <Widget>[
          ButtonUser(
            text: 'لا',

            onTap: () => Navigator.pop(context),
          ),
          ButtonUser(text: 'نعم',  onTap: () => ontap()),
        ],
      );
    },
  );
}