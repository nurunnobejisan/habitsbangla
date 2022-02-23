import 'package:flutter/material.dart';
import 'package:habitsbangla/habit2.0/dialogs/settings_dialog/settings_dialog.dart';
import 'package:habitsbangla/habit2.0/pages/home_page/home_page_controller.dart';
import 'package:habitsbangla/habit2.0/widgets/circular_button.dart';
import 'package:provider/provider.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomePageController>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularButton(
            onPressed: () => controller.showFullYearDialog(context),
            icon: const Icon(Icons.calendar_today_outlined),
            padding: const EdgeInsets.all(10),
          ),
          StreamBuilder<DateTime>(
            stream: controller.selectedMonth.stream,
            initialData: controller.selectedMonth.value,
            builder: (context, snapshot) {
              final selectedDate = snapshot.data!;

              return Text(
                selectedDate.year.toString(),
                style: Theme.of(context).textTheme.headline3
              );
            }
          ),
          CircularButton(
            onPressed: () => SettingsDialog.show(context),
            icon: const Icon(Icons.settings_applications_outlined),
            padding: const EdgeInsets.all(10),
          ),

        ],
      ),
    );
  }
}