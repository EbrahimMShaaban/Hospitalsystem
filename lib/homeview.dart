import 'package:flutter/material.dart';

import 'dart:core';

import 'optional.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Homestate();
  }
}

class Homestate extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 0.7,
                    image: AssetImage(
                      "assets/doctor.jpeg",
                    ),
                    fit: BoxFit.fill)),
            child: Column(
              children: <Widget>[
                const Text("\n " "\n" "\n " "\n" "\n " "\n" "\n " "\n" "\n " "\n"),
                Image.asset(
                  "assets/logo.jpeg",
                  width: 150,
                  height: 150,
                ),
                const Text("\n " "\n"),
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
                const Text("\n \n \n \n \n \n \n \n "),
                ElevatedButton(
                    child: const Text(
                      "NEXT",
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home1()),
                      );
                    })

                // FlatButton(
                //   onPressed: optinal,
                //   child: Text("Next",
                //       style: TextStyle(fontSize: 40, color: Colors.white)),
                //   color: Colors.black,
                //   colorBrightness: Brightness.dark,
                // ),
                // RaisedButton(child: Text("Next"),
                //   onPressed:(optinal()
                //   {
                //     var router = new MaterialPageRoute(
                //       builder: (BuildContext context) =>optinal("")
                //     );
                //     Navigator.of(context).push(router);
                //   }
                //   ),
                // )
              ],
            )),
      ),

      /* Container(
        // color: Color.fromARGB(221, 55, 4, 236),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
        // border: Border.all(),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "in hospital app",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset("doctor.jpeg"),
          ],
        ),
      ), */
    );
  }
}

void negm() {}
//}
// }
