import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_components.dart';
import 'models_and_data.dart';
import 'optional.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: titleColor,
      body: const Center(
        child: Text('Chat page',style: TextStyle(color: Colors.grey),),
      ),
    );
  }
}

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}
class _BookingPageState extends State<BookingPage>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child: const Center(
                    child: PageTitle(title: Text('Appointment Booking \n service',textAlign: TextAlign.center,style: TextStyle(fontSize: 26.0,)),
                ),),
                height: MediaQuery.of(context).size.height*0.23)
            ,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: appointmentData.map(
                      (e)=> Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                            child: Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                                  child: Text(e,),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0) ,topLeft: Radius.circular(10.0)),
                                  color: mainColor
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                            child: Container(
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                                child: SizedBox(
                                  height: 18.0,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: TextField(
                                        controller: appointmentDataControllers[appointmentData.indexOf(e)],
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomRight:Radius.circular(10.0) ,topRight: Radius.circular(10.0)),
                                  color: mainColor
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ).toList(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Book your appointment \n from your place',
                  textAlign: TextAlign.center,style: TextStyle(color: titleColor,fontSize: 24.0),)
              ],
            ),
            const Text("\n \n"),
            ElevatedButton(
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {


                }
            ),
          ],
        ),
      ),
    );

  }
}


class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child:  Center(
                  child: PageTitle(title: Text('Medical reports',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.grey[700]),)),
                ),
                height: MediaQuery.of(context).size.height*0.23)
            ,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: data.map(
                      (e)=> Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                            child: Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                                  child: Text(e,),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0) ,topLeft: Radius.circular(10.0)),
                                  color: mainColor
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                            child: Container(
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                                child: SizedBox(
                                  height: 18.0,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: TextField(
                                        controller: dataControllers[data.indexOf(e)],
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomRight:Radius.circular(10.0) ,topRight: Radius.circular(10.0)),
                                  color: mainColor
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ).toList(),
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0),
                   child: Text('Notes/ ...',style: TextStyle(color: titleColor,fontSize: 24.0),),
                 )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('get well soon',style: TextStyle(color: titleColor,fontSize: 24.0),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child:  Center(
                  child: PageTitle(title: Text('Contact us',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.grey[700]),)),
                ),
                height: MediaQuery.of(context).size.height*0.23)
            ,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: contactData.map(
                      (e)=> Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                            child: Container(
                              height: (contactData.indexOf(e)==2)?MediaQuery.of(context).size.height*0.3:MediaQuery.of(context).size.height*0.1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                                child: Text(e,style: const TextStyle(fontSize: 18.0),),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0) ,topLeft: Radius.circular(10.0)),
                                  color: titleColor
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                            child: Container(
                              height: (contactData.indexOf(e)==2)?MediaQuery.of(context).size.height*0.3:MediaQuery.of(context).size.height*0.1,
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                                child: SizedBox(
                                  height: 18.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2.0),
                                    child: TextField(
                                      controller: contactDataControllers[contactData.indexOf(e)],
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(bottomRight:Radius.circular(10.0) ,topRight: Radius.circular(10.0)),
                                  color: titleColor
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ).toList(),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.0),
                    child: PageTitle(title: Text('submit',style: TextStyle(fontSize: 24.0,)),
                ))
              ],
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(child: SizedBox(),),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.phone_in_talk,color: Colors.white,),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.four_g_plus_mobiledata,color: Colors.white,),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.message,color: Colors.white,),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.facebook,color: Colors.white,),
                ),
                Expanded(child: SizedBox(),),
              ],
            ),
          ],
        ),
      ),
    );

  }
}

class RateUsPage extends StatefulWidget {
  const RateUsPage({Key? key}) : super(key: key);

  @override
  _RateUsPageState createState() => _RateUsPageState();
}

class _RateUsPageState extends State<RateUsPage> {

  int? chosenStar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chosenStar = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child:  Center(
                  child: PageTitle(title: Text('Rate us',style: TextStyle(fontSize: 33.0,fontWeight: FontWeight.bold,color: Colors.grey[700]),)),
                ),
                height: MediaQuery.of(context).size.height*0.25)
            ,
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 12.0),
                    child: PageTitle(title: Text('Rate us',style: TextStyle(fontSize: 20.0,)),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 12.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: PageTitle(title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                setState(() {
                                  chosenStar =1;
                                });
                              },
                              child: Icon(Icons.star,color: (chosenStar! >= 1)?Colors.yellow:Colors.grey,size: 30.0,)),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  chosenStar =2;
                                });
                              },
                              child: Icon(Icons.star,color: (chosenStar! >= 2)?Colors.yellow:Colors.grey,size: 30.0,)),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  chosenStar =3;
                                });
                              },
                              child: Icon(Icons.star,color: (chosenStar! >= 3)?Colors.yellow:Colors.grey,size: 30.0,)),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  chosenStar =4;
                                });
                              },
                              child: Icon(Icons.star,color: (chosenStar! >= 4)?Colors.yellow:Colors.grey,size: 30.0,)),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  chosenStar =5;
                                });
                              },
                              child: Icon(Icons.star,color: (chosenStar! >= 5)?Colors.yellow:Colors.grey,size: 30.0,)),
                        ],
                      ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 12.0),
                    child: PageTitle(title: Text('Reason',style: TextStyle(fontSize: 20.0,)),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 12.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.35 ,
                      child: const PageTitle(title: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                      ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}


