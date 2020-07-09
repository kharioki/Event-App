import 'dart:math';

import 'package:Event_App/models/date_model.dart';

// create event dates
List<DateModel> getDates() {
  List<DateModel> dates = new List<DateModel>();
  DateModel dateModel = new DateModel();

  // 1
  dateModel.date = '10';
  dateModel.date = 'Sun';
  dates.add(dateModel);

  dateModel = new DateModel();

  // 2
  dateModel.date = '11';
  dateModel.date = 'Mon';
  dates.add(dateModel);

  dateModel = new DateModel();

  // 3
  dateModel.date = '12';
  dateModel.date = 'Tue';
  dates.add(dateModel);

  dateModel = new DateModel();

  // 4
  dateModel.date = '13';
  dateModel.date = 'Wed';
  dates.add(dateModel);

  dateModel = new DateModel();

  // 5
  dateModel.date = '14';
  dateModel.date = 'Thu';
  dates.add(dateModel);

  dateModel = new DateModel();

  // 6
  dateModel.date = '15';
  dateModel.date = 'Fri';
  dates.add(dateModel);

  dateModel = new DateModel();

  // 7
  dateModel.date = '16';
  dateModel.date = 'Sat';
  dates.add(dateModel);

  dateModel = new DateModel();

  return dates;
}
