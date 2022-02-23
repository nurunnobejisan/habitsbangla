import 'package:flutter/material.dart';
import 'package:habitsbangla/habit2.0/pages/home_page/home_page.dart';
import 'package:habitsbangla/habit2.0/pages/home_page/home_page_controller.dart';
import 'package:habitsbangla/habit2.0/utils/consts.dart';
import 'package:provider/provider.dart';

class MonthRow extends StatelessWidget {
  const MonthRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomePageController>(context);
    final now = DateTime.now();

    return StreamBuilder<DateTime>(
        stream: controller.selectedMonth.stream,
        initialData: controller.selectedMonth.value,
        builder: (context, snapshot) {
          final selectedMonth = snapshot.data!;

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
                child: GestureDetector(
                    onTap: () => controller.previousMonth(),
                    child: Icon(
                      Icons.chevron_left_rounded,
                      color: Theme.of(context).primaryColorDark,
                    )),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Text(MONTH_NAMES[selectedMonth.month - 1],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2),
              ),
              SizedBox(
                child: MyPopupMenu(
                  child: Icon(
                    Icons.menu_rounded,
                    key: GlobalKey(),
                    color: const Color(0xfff55a00),
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
                child: (selectedMonth.year == now.year &&
                        selectedMonth.month == now.month)
                    ? const SizedBox.shrink()
                    : GestureDetector(
                        onTap: () => controller.nextMonth(),
                        child: Icon(Icons.chevron_right_rounded,
                            color: Theme.of(context).primaryColorDark)),
              )
            ],
          );
        });
  }
}
