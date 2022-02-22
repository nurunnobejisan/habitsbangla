import 'package:flutter/material.dart';
import 'package:habitsbangla/habit2.0/dialogs/settings_dialog/settings_dialog_controller.dart';
import 'package:habitsbangla/habit2.0/themes/base_theme.dart';
import 'package:habitsbangla/habit2.0/widgets/triple_selector.dart';
import 'package:provider/provider.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (ctx) => SettingsDialogController(),
      dispose: (ctx, SettingsDialogController controller) => controller.dispose(),
      child: Consumer<SettingsDialogController>(
        builder: (ctx, controller, child) => Dialog(
          backgroundColor: Theme.of(context).backgroundColor,
          insetPadding: const EdgeInsets.symmetric(horizontal: 30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "সেটিংস",
                    style: Theme.of(context).textTheme.headline2
                  ),
                ),
                const Divider(color: Colors.transparent, height: 20),
                const Text(
                  "হালকা মোড",
                ),
                const Divider(color: Colors.transparent, height: 5),
                TripleSelector(
                  options: const ["হালকা মোড", "অন্ধকার", "স্বয়ংক্রিয়"],
                  onChanged: (newValue) => controller.changeThemeStatus(newValue),
                  initialValue: controller.themeStatus.index,
                  align: MainAxisAlignment.start,
                ),
                const Divider(color: Colors.transparent),
                const Text("রং"),
                StreamBuilder<Object>(
                  stream: controller.selectedColor.stream,
                  initialData: controller.selectedColor.value,
                  builder: (context, snapshot) {
                    return Row(
                      children: [
                        Expanded(
                          child: ColorsBox(
                            colors: getColors(ThemeColors.yellowBlue),
                            selected: snapshot.data == ThemeColors.yellowBlue,
                            onTap: () => controller.changeThemeColor(ThemeColors.yellowBlue),
                          )
                        ),
                        const VerticalDivider(color: Colors.transparent),
                        Expanded(
                          child: ColorsBox(
                            colors: getColors(ThemeColors.purpleGreen),
                            selected: snapshot.data == ThemeColors.purpleGreen,
                            onTap: () => controller.changeThemeColor(ThemeColors.purpleGreen),
                          )
                        ),
                        const VerticalDivider(color: Colors.transparent),
                        Expanded(
                          child: ColorsBox(
                            colors: getColors(ThemeColors.orangeBlue),
                            selected: snapshot.data == ThemeColors.orangeBlue,
                            onTap: () => controller.changeThemeColor(ThemeColors.orangeBlue),
                          )
                        ),
                      ],
                    );
                  }
                ),
                const Divider(color: Colors.transparent, height: 50),
                GestureDetector(
                  onTap: controller.openGithub,
                  child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "[About Me\ncheck it on ",
                            style: Theme.of(context).textTheme.subtitle1,
                            children: [
                              TextSpan(
                                  text: "GitHub",
                                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      decoration: TextDecoration.underline,
                                      color: Theme.of(context).accentColor
                                  )
                              )
                            ]
                        )
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
  
  static void show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "settings-dialog",
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (ctx, anim1, anim2, child) {
        final curvedAnimation = CurvedAnimation(
          parent: anim1,
          curve: Curves.easeOut
        );

        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 0)).animate(curvedAnimation),
          child: child,
        );
      },
      pageBuilder: (cts, anim1, anim2) {
        return SettingsDialog();
      }
    );
  }
}

class ColorsBox extends StatelessWidget {
  static const double HEIGHT = 30;
  static const double RADIUS = 7;

  final List<Color> colors;
  final bool selected;
  final Function() onTap;
  
  ColorsBox({
    required this.colors,
    required this.selected,
    required this.onTap
  }) : assert(colors.length == 3);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: (selected) ? Border.all(color: Theme.of(context).accentColor, width: 3) : null,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(2),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: HEIGHT,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(RADIUS), bottomLeft: Radius.circular(RADIUS)),
                  color: colors[0]
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: HEIGHT,
                decoration: BoxDecoration(
                  color: colors[1]
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: HEIGHT,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(RADIUS), bottomRight: Radius.circular(RADIUS)),
                  color: colors[2]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}