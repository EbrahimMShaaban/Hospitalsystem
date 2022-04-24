import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_medical/sign%20up.dart';
import 'dart:core';

import 'constant/showloading.dart';
import 'main.dart';

class Home1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return optinal();
  }
}

class optinal extends State<Home1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   String? email ,password;


  signIn() async {
    var formdata = _formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        showLoading(context);
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email!, password: password!);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        print(e.code);
        if (e.code == 'user-not-found') {
          Navigator.of(context).pop();
          AwesomeDialog(
                  context: context,
                  title: "خطأ",
                  body: const Text("لا يوجد حساب لهذا البريد الالكتروني"))
              .show();
        } else if (e.code == 'wrong-password') {
          Navigator.of(context).pop();
          AwesomeDialog(
                  context: context,
                  title: "خطأ",
                  body: const Text("كلمة المرور خطأ"))
              .show();
        } else if (e.code == 'invalid-email') {
          Navigator.of(context).pop();
          AwesomeDialog(
                  context: context,
                  title: "خطأ",
                  body: const Text("تم ادخال الايميل بشكل خاطيء"))
              .show();
        }
      }
    } else {
      return "Not Valid";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/doctor.jpeg"), fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text("\n" "\n " "\n" "\n " "\n" "\n " "\n"),
                Image.asset(
                  "assets/logo.jpeg",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "WELCOME",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "in hospital app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.normal),
                ),
                const Text("\n" "\n"),
                SizedBox(
                    width: 300,
                    height: 300,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            // initialValue: "Email...",
                            onChanged: (val) {
                              email = val;
                            },
                            validator: (value) {
                              email = value!;
                              if (value.isEmpty) {
                                return 'الرجاءإدخال البريد الالكتروني ';
                              }
                              if (!value.toString().contains('@')) {
                                return ' الرجاء ادخال البريد الالكتروني بشكل صحيح يجب ان يحتوي @';
                              } else if (!value.toString().contains('.com')) {
                                return 'الرجاء ادخال البريد الالكتروني بشكل صحيح يجب ان مثل user@mail.com';
                              }
                            },
                            decoration: const InputDecoration(
                                //  border: InputBorder(borderSide: ),
                                filled: true,
                                fillColor: Colors.lightGreenAccent,
                                hintText: 'Email...',
                                suffixIcon: Icon(Icons.email),
                                iconColor: Colors.pink),
                            cursorColor: Colors.blueAccent,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(
                                // decoration: InputDecoration(decoration: InputDecoration(fillColor: Colors.orange, filled: true),),
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text("\n"),
                          TextFormField(
                            // obscureText: true,
                            //  decoration: new InputDecoration(

                            // initialValue: "Password...",
                            onChanged: (val) {
                              password = val;
                            },
                            validator: (value) {
                              password = value!;
                              if (value.isEmpty) {
                                return 'الرجاءإدخال كلمة المرور ';
                              }
                            },
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.lightGreenAccent,
                                hintText: 'Password...',
                                suffixIcon: Icon(Icons.password),
                                iconColor: Colors.yellow),
                            textInputAction: TextInputAction.send,
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " \n forget password \n ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: () async{
                                await loginNavigate(context);

                              }),
                          ElevatedButton(

                              child: const Text(
                                "Creat Account",
                                style: TextStyle(fontSize: 30),
                              ),
                              onPressed: ()   {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ElectronicServicesScreen()),
                                );

                          })
                        ],
                      ),
                    ))
              ],
            ),
          )),
    ));
  }

  loginNavigate(context)async{
    var user = await signIn();
    var uid= FirebaseAuth.instance.currentUser!.uid;

    if(user != null){
      Navigator.of(context).popUntil((route) => route.isFirst);
      await  Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>  Home3()));
    }
  }

}
