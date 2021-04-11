import 'package:uvento/models/date_models.dart';

List<DateModel> getDates() {
  List<DateModel> dates = <DateModel>[];
  DateModel dateModel = DateModel();

  //1
  dateModel.date = "10";
  dateModel.weekDay = "Sun";
  dates.add(dateModel);

  //2
  dateModel.date = "11";
  dateModel.weekDay = "Mon";
  dates.add(dateModel);

  //3
  dateModel.date = "12";
  dateModel.weekDay = "Tue";
  dates.add(dateModel);

  //4
  dateModel.date = "13";
  dateModel.weekDay = "Wed";
  dates.add(dateModel);

  //5
  dateModel.date = "14";
  dateModel.weekDay = "Thu";
  dates.add(dateModel);

  //6
  dateModel.date = "15";
  dateModel.weekDay = "Fri";
  dates.add(dateModel);

  //7
  dateModel.date = "16";
  dateModel.weekDay = "Sat";
  dates.add(dateModel);
}
