// ignore_for_file: use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'package:flutter_app_medical/constant/style.dart';

class ButtonUser extends StatefulWidget {
  const ButtonUser({ required this.text, required this.onTap});
  final String text;

  final Function onTap;

  @override
  _ButtonUserState createState() => _ButtonUserState();
}

class _ButtonUserState extends State<ButtonUser> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      child: Container(
        height: 35,
        margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        width: sizeFromWidth(context, 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),


        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(widget.text,)),
      ),
    );
  }
}
