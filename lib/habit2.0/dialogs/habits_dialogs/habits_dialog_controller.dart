import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get_it/get_it.dart';
import 'package:habitsbangla/habit2.0/dialogs/confirmation_dialog/confirmation_dialog.dart';
import 'package:habitsbangla/habit2.0/dialogs/habit_details_dialog/habit_details_dialog.dart';
import 'package:habitsbangla/habit2.0/models/habit.dart';
import 'package:habitsbangla/habit2.0/services/data_service.dart';
import 'package:habitsbangla/habit2.0/utils/consts.dart';
import 'package:habitsbangla/habit2.0/utils/stream_data.dart';

class HabitsDialogController {
  final DataService _dataService = GetIt.I.get<DataService>();

  StreamData<Map<int, Habit>> get habits => _dataService.habits;

  String getDaysString(Habit habit) {
    if(habit.period.length == 7) {
      return "সারা সপ্তাহের দিন";
    } else if(habit.period.length == 2 && habit.period.reduce((a, b) => a + b) == 13) {
      return "সপ্তাহান্তিক কাল";
    } else if(habit.period.length == 5 && habit.period.reduce((a, b) => a + b) == 15) {
      return "কর্ম সপ্তাহ";
    }
    return habit.period.map((e) => DAY_NAMES[e - 1].substring(0, 3)).join(', ');
  }

  String getStartPeriodString(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, "0")}-${date.day.toString().padLeft(2, "0")}";
  }

  void deleteHabit(int id) {
    _dataService.deleteHabit(id);
  }

  void showHabitDetailsDialog(BuildContext context, int id) {
    HabitDetailsDialog.show(context, id);
  }

  void showDeleteHabitConfirmation(BuildContext context, int id, SlidableController slidableController) {
    ConfirmationDialog.show(context, 
      text: "আপনি কি নিশ্চিত যে আপনি এই অভ্যাসটি মুছে ফেলতে চান?",
      onYes: () => deleteHabit(id),
      onNo: () => slidableController.activeState?.close()
    );
  }

  void dispose() {
    //
  }
}