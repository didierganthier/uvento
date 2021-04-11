import 'package:uvento/models/date_models.dart';

List<DateModel> getDates() {
  List<DateModel> dates = <DateModel>[];
  DateModel dateModel = DateModel();

  dates.add(DateModel(date: '10', weekDay: 'Sun'));
  dates.add(DateModel(date: '11', weekDay: 'Mon'));
  dates.add(DateModel(date: '12', weekDay: 'Tue'));
  dates.add(DateModel(date: '13', weekDay: 'Wed'));
  dates.add(DateModel(date: '14', weekDay: 'Thu'));
  dates.add(DateModel(date: '15', weekDay: 'Fri'));
  dates.add(DateModel(date: '16', weekDay: 'Sat'));

  return dates;
}
