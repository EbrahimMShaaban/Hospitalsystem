import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:core';

import 'constant/showloading.dart';
import 'main.dart';

class Home3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return optinal();
  }
}

class optinal extends State<Home3> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var email, password, phone, name;
  signUp() async {
    var formdata = _formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        showLoading(context);
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Navigator.of(context).pop();
          AwesomeDialog(
                  context: context,
                  title: "Error",
                  dialogType: DialogType.ERROR,
                  body: const Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                          "كلمة المرور ضعيفة يجب ان تتكون علي الاقل من ستة ارقام او حروف")))
              .show();  } else if (e.code == 'email-already-in-use') {
          Navigator.of(context).pop();
          AwesomeDialog(
                  context: context,
                  title: "Error",
                  dialogType: DialogType.ERROR,
                  body: const Text(
                      "البريد الالكتروني موجود بالفعل ، الرجاء ادخال بريد اخر"))
              .show();}
      } catch (e) {
        print(e);
      }
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
                const Text("\n" "\n " "\n" "\n "),
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
                    height: 400,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            onChanged: (val) {
                              setState(() {
                                name = val;
                              });
                            },
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Enter uour name please';
                            //   } else if (value.length < 3) {
                            //     return 'Name must contain 3 digit at least';
                            //   }
                            //
                            // },
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.lightGreenAccent,
                                hintText: 'NAME...',
                                suffixIcon: Icon(Icons.person),
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
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },
                            // validator: (value) {
                            //   email = value;
                            //   if (value!.isEmpty) {
                            //     return 'enter your email please';
                            //   } else if (!value.toString().contains('@')) {
                            //     return 'E-Mail must contain "@"';
                            //   }
                            //
                            // },
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.lightGreenAccent,
                                hintText: 'Email...',
                                suffixIcon: Icon(Icons.person),
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
                            onChanged: (val) {
                              setState(() {
                                password = val;
                              });

                            },
                            validator: (value) {
                              password = value;
                              if (value!.isEmpty) {
                                return 'enter password please';
                              }
                              return null;

                            },
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.lightGreenAccent,
                                hintText: 'Password...',
                                suffixIcon: Icon(Icons.person),
                                iconColor: Colors.pink),
                            cursorColor: Colors.blueAccent,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(
                              // decoration: InputDecoration(decoration: InputDecoration(fillColor: Colors.orange, filled: true),),
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("\n"),
                          TextFormField(
                            onChanged: (val) {
                              setState(() {
                                phone = val;
                              });

                            },
                            validator: (value) {
                              phone = value;
                              if (value!.isEmpty) {
                                return 'enter ypur phone number please';
                              }

                            },
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.lightGreenAccent,
                                hintText: 'Phone Number...',
                                suffixIcon: Icon(Icons.person),
                                iconColor: Colors.pink),
                            cursorColor: Colors.blueAccent,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(
                              // decoration: InputDecoration(decoration: InputDecoration(fillColor: Colors.orange, filled: true),),
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(fontSize: 30),
                            ),

                            onPressed: () async {
                              UserCredential? response = await signUp();
                              print("===================");
                              print(password);
                              print(email);
                              print(name);
                              print(phone);
                              // ignore: unnecessary_null_comparison
                              if (response != null) {
                                await FirebaseFirestore.instance
                                    .collection("users")
                                    .add({
                                  "username": name,
                                  "email": email,
                                  "userid":
                                      FirebaseAuth.instance.currentUser!.uid,
                                });

                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ElectronicServicesScreen()));
                              } else {
                                print("Sign Up Faild");
                              }
                              print("===================");
                            },
                            //
                            // {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             ElectronicServicesScreen()),
                            //   );
                            // }
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )),
    ));
  }
}
