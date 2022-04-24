import 'package:flutter/cupertino.dart';

class Appointment{
  int? id;
  String? doctorName, speciality, timePeriod;

  Appointment({required this.doctorName,required this.speciality,required this.timePeriod});

}


List<Appointment> dummyData = [
  Appointment(doctorName: 'Doctor', speciality: 'Specialities', timePeriod: 'Time Period'),
  Appointment(doctorName: 'ahmed salah', speciality: 'Urologist', timePeriod: '11am_4pm'),
  Appointment(doctorName: 'Abdallah negm', speciality: 'Interenist', timePeriod: '7am_12pm'),
  Appointment(doctorName: 'Abdelrahman', speciality: 'Neurologist', timePeriod: '9am_2pm'),
  Appointment(doctorName: 'Mohamed Amr', speciality: 'Dentist', timePeriod: '8am_1pm'),
  Appointment(doctorName: 'Ziad ahmed', speciality: 'Ophthalmologist', timePeriod: '12pm_5pm'),
  Appointment(doctorName: 'harry magoir', speciality: 'Cardiologist', timePeriod: '10am_3pm'),
];

List<String> data = [
  'Name','Age','Address','Phone number','Gender','Nationality','Date','Time period','Diagnosis'
];

List<TextEditingController> dataControllers = [
  TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
];

List<String> appointmentData = [
  'Name','Address','Phone number','Gender','Nationality','Date','Time period',
];

List<TextEditingController> appointmentDataControllers = [
  TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
];

List<String> contactData = [
  'Complainant','E-mail','Complaint'
];

List<TextEditingController> contactDataControllers = [
 TextEditingController(),TextEditingController(),TextEditingController(),
];
