import 'package:habitsbangla/habit2.0/db/days_table.dart';
import 'package:habitsbangla/habit2.0/db/habits_days_table.dart';

class Day {
  late final DateTime date;
  late final Map<int, bool> habits;

  Day.fromDb(Map<String, dynamic> map, List<Map<String, dynamic>> habitsDaysMaps) {
    date = DateTime.fromMillisecondsSinceEpoch(map[DaysTable.date]);
    habits = Map();
    habitsDaysMaps.forEach((e) {
      habits[e[HabitsDaysTable.habitId]] = e[HabitsDaysTable.done] > 0 ? true : false;
    });
  }
}