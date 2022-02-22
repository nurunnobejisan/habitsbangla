import 'package:flutter/material.dart';
import 'package:habitsbangla/habit1.0/constants/app_assets.dart';
import 'package:habitsbangla/habit1.0/models/task_presets.dart';
import 'package:habitsbangla/habit1.0/ui/task/animated_task.dart';
import 'package:habitsbangla/habit1.0/ui/task/task_completion_ring.dart';
import 'package:habitsbangla/habit1.0/ui/theming/app_theme.dart';

import 'grid_task.dart';

class HomePage3 extends StatelessWidget {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppTheme.of(context).primary,
      body: const GridTask(
        tasks: [
          TaskPreset(name: 'একটি স্বাস্থ্যকর খাবার খান', iconName: AppAssets.carrot),
          TaskPreset(name: 'কুকুরের সাথে হাঁটা', iconName: AppAssets.dog),
          TaskPreset(name: 'কিছু কোডিং করুন', iconName: AppAssets.html),
          TaskPreset(name: 'ধ্যান করা', iconName: AppAssets.meditation),
          TaskPreset(name: '10টি পুশআপ করুন', iconName: AppAssets.pushups),
          TaskPreset(name: '8 ঘন্টা ঘুমান', iconName: AppAssets.rest),
          TaskPreset(name: 'ভিটামিন গ্রহণ করুন', iconName: AppAssets.vitamins),
          TaskPreset(name: 'কাজের জন্য সাইকেল', iconName: AppAssets.bike),
          TaskPreset(name: 'আপনার হাত ধুয়ে নিন', iconName: AppAssets.washHands),
          TaskPreset(name: 'একটি মুখোশ পরিধান কর', iconName: AppAssets.mask),
          TaskPreset(name: 'দাঁত মাজো', iconName: AppAssets.toothbrush),
          TaskPreset(name: 'আপনার দাঁত ফ্লস', iconName: AppAssets.dentalFloss),
          TaskPreset(name: 'জলপান করা', iconName: AppAssets.water),
          TaskPreset(name: 'অনুশীলনের যন্ত্র', iconName: AppAssets.guitar),
          TaskPreset(name: '10 মিনিট পড়ুন', iconName: AppAssets.book),
          TaskPreset(name: 'ধূমপান করবেন না', iconName: AppAssets.smoking),
          TaskPreset(name: 'অ্যালকোহল পান করবেন না', iconName: AppAssets.beer),
          TaskPreset(name: 'স্ক্রীন টাইম কমিয়ে দিন', iconName: AppAssets.phone),
          TaskPreset(name: 'একটি ওয়ার্কআউট করুন', iconName: AppAssets.dumbell),
          TaskPreset(name: 'কারাতে কর', iconName: AppAssets.karate),
          TaskPreset(name: 'দৌড়ে যান', iconName: AppAssets.run),
          TaskPreset(name: 'সাঁতার কাটতে যাও', iconName: AppAssets.swimmer),
          TaskPreset(name: 'কিছু প্রসারিত করুন', iconName: AppAssets.stretching),
          TaskPreset(name: 'খেলা করা', iconName: AppAssets.basketball),
          TaskPreset(name: 'বাইরে সময় কাটান', iconName: AppAssets.sun),



        ],
      ),
    );
  }
}
