import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:ro9ya/models/view_models/navigation_item.dart';
import 'package:ro9ya/repositories/ro9ya_repo.dart';
import 'package:ro9ya/screens/ro9ya_screen.dart';

class NavigationController extends ChangeNotifier {
  final List<NavigationItem> _screens = [
    NavigationItem(
      screen: Ro9yaScreen(
        ro9yaItems: Ro9yaRepo.ro9yaItems,
      ),
      label: "ابو البراء للرقية الشرعية",
      icon: 'home',
    ),
    NavigationItem(
      screen: Ro9yaScreen(
        ro9yaItems: Ro9yaRepo.ro9yaItems,
      ),
      label: "ابو البراء للرقية الشرعية",
      icon: 'phone',
    ),
    NavigationItem(
      screen: Ro9yaScreen(
        ro9yaItems: Ro9yaRepo.ro9yaItems,
      ),
      label: "ابو البراء للرقية الشرعية",
      icon: 'star',
    ),
    NavigationItem(
      screen: Ro9yaScreen(
        ro9yaItems: Ro9yaRepo.ro9yaItems,
      ),
      label: "ابو البراء للرقية الشرعية",
      icon: 'profile',
    ),
  ];

  UnmodifiableListView get screens =>
      UnmodifiableListView(_screens.map((i) => i.screen).toList().reversed);
  UnmodifiableListView get labels =>
      UnmodifiableListView(_screens.map((i) => i.label).toList().reversed);
  UnmodifiableListView get icons =>
      UnmodifiableListView(_screens.map((i) => i.icon).toList().reversed);

  late String _currentTitle;
  String get currentTitle => _currentTitle;

  late int _currentIndex;
  int get currentIndex => _currentIndex;

  late Widget currentScreen;

  NavigationController() {
    _currentIndex = 0;
    _currentTitle = labels[0];
    currentScreen = screens[currentIndex];
  }

  void navigateTo(Widget screen, {String? title, int? index}) {
    currentScreen = screen;
    if (title != null) {
      _currentTitle = title;
    }
    if (index != null) {
      _currentIndex = index;
    }
    notifyListeners();
  }
}
