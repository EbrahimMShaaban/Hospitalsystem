import 'package:flutter/material.dart';

import 'constants.dart';
import 'models_and_data.dart';

class PageTitle extends StatelessWidget {
  final Widget? title;
  const PageTitle({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: title,
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
      decoration: BoxDecoration(
        color: titleColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String? title;
  final Widget? destination;
  const OptionButton({Key? key,required this.title,required this.destination}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> destination!)
        );
      },
      child: Container(
        child: Center(child: Text(title!,style: const TextStyle(fontSize: 22.0),)),
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}

class CustomTable extends StatelessWidget {
  const CustomTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: dummyData.map(
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
                          child: Text(e.doctorName!,),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                          child: Text(e.speciality!,),
                        ),
                      ),
                      color: mainColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 2.0),
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8.0),
                          child: Text(e.timePeriod!,),
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
    );
  }
}
