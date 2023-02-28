import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/view/home/homepage/view/home_page_view.dart';
import 'package:konusamayanlar_app/view/home/profile/view/profile_view.dart';

import '../view/main_page_view.dart';

abstract class MainPageViewModel extends State<MainPageView> {
  List<Widget> screenList = [
    const HomePage(),
    const Text('Second Page'),
    const ProfileView(),
  ];
}
