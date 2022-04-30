import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'constants.dart';
import 'custom_components.dart';
import 'homeview.dart';
import 'other_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              print('one pressesd');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('Tex Button', style: TextStyle(color: Colors.black)),
            onLongPress: () {
              print('long pressed');
            },
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('text', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shadowColor: Colors.red,
                onPrimary: Colors.green,
                primary: Colors.amberAccent,
              )),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'text',
              style: TextStyle(color: Colors.black, fontSize: 90),
            ),
          ),
          IconButton(
            // onPressed: () {},
            icon: Icon(Icons.phone),
            iconSize: 40,
            color: Colors.green,
            focusColor: Colors.red,
            highlightColor: Colors.red,
            disabledColor: Colors.amberAccent,

            onPressed: null,
          ),
          MaterialButton(
            onPressed: null,
            child: Text('text'),
            disabledTextColor: Colors.green,
            // disabledElevation: ,
            disabledColor: Colors.red,
          ),
          Icon(
            Icons.phone,
            semanticLabel: 'phone',
            color: Colors.green,
            size: 40,
          )
        ],
      ),
    )));
  }
}
/*
Container(
          height: 400,
          width: 200,
          color: Colors.blue,
         // child:
      ),
 */

class ElectronicServicesScreen extends StatelessWidget {
  const ElectronicServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              child: Center(
                child: PageTitle(
                    title: Text(
                  'Electronic services',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                )),
              ),
              height: MediaQuery.of(context).size.height * 0.3),
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    OptionButton(title: 'Chat', destination: ChatPage()),
                    SizedBox(
                      height: 15.0,
                    ),
                    OptionButton(
                        title: 'Appointments', destination: AppointmentPage()),
                    SizedBox(
                      height: 15.0,
                    ),
                    OptionButton(
                        title: 'Medical reports', destination: ReportsPage()),
                    SizedBox(
                      height: 15.0,
                    ),
                    OptionButton(
                        title: 'Contact us', destination: ContactUsPage()),
                    SizedBox(
                      height: 15.0,
                    ),
                    OptionButton(title: 'Rate us', destination: RateUsPage()),
                  ],
                ),
                flex: 4,
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 20.0),
                child: Text(
                  welcomeText,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              child: const Center(
                  child: PageTitle(
                title: Text('Appointments',
                    style: TextStyle(
                      fontSize: 26.0,
                    )),
              )),
              height: MediaQuery.of(context).size.height * 0.25),
          const CustomTable(),
          const SizedBox(
            height: 20.0,
          ),
          Center(
              child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BookingPage()));
            },
            child: const PageTitle(
              title: Text('booking',
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
          )),
        ],
      ),
    );
  }
}
