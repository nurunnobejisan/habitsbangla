import 'package:flutter/material.dart';
import 'package:habitsbangla/habit2.0/dialogs/add_habit_dialog/add_habit_dialog_controller.dart';
import 'package:provider/provider.dart';

class StartPeriodInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AddHabitDialogController>(context);
  
    return StreamBuilder<Object>(
      stream: controller.selectedStartPeriod,
      initialData: controller.startPeriod,
      builder: (context, snapshot) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Box(
                  selected: snapshot.data == StartPeriod.none,
                  text: "কোনোটিই নয়",
                  onTap: () => controller.changeStartPeriod(StartPeriod.none)
                ),
                const Divider(color: Colors.transparent, height: 10),
                Box(
                  selected: snapshot.data == StartPeriod.today,
                  text: "আজ",
                  onTap: () => controller.changeStartPeriod(StartPeriod.today)
                ),
              ],
            ),
            Column(
              children: [
                Box(
                  selected: snapshot.data == StartPeriod.thisMonth,
                  text: "এই মাস",
                  onTap: () => controller.changeStartPeriod(StartPeriod.thisMonth),
                ),
                const Divider(color: Colors.transparent, height: 10),
                Box(
                  selected: snapshot.data == StartPeriod.thisYear,
                  text: "এই বছর",
                  onTap: () => controller.changeStartPeriod(StartPeriod.thisYear),
                ),
              ],
            ),
          ],
        );
      }
    );
  }
}

class Box extends StatelessWidget {
  final bool selected;
  final Function() onTap;
  final String text;

  Box({
    required this.selected,
    required this.onTap,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).shadowColor
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.elasticOut,
              switchOutCurve: Curves.easeInQuart,
              transitionBuilder: (child, anim) {
                return ScaleTransition(
                  scale: anim,
                  child: child,
                );
              },
              child: (selected) ? Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(9)
                ),
              )
              : const SizedBox.shrink()
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: selected ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark 
              ),
            ),
          ]
        ),
      ),
    );
  }
}