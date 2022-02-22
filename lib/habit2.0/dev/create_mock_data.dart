import 'package:habitsbangla/habit2.0/db/habits_table.dart';
import 'package:sqflite/sqflite.dart';

Future<void> createMockData(Database db) async {
  db.insert(
    HabitsTable.tableName, 
    {
      "text": "ছুটা",
      "emoji": "🏃🏻",
      "period": "[2, 4]"
    }
  );
  db.insert(
    HabitsTable.tableName, 
    {
      "text": "পড়ুন",
      "emoji": "📖",
      "period": "[1, 2, 3, 4, 5, 6, 7]"
    }
  );
  db.insert(
    HabitsTable.tableName, 
    {
      "text": "অধ্যয়ন",
      "emoji": "📚",
      "period": "[1, 3, 4, 5]"
    }
  );
}