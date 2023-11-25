import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:ro9ya/models/view_models/navigation_item.dart';
import 'package:ro9ya/screens/ro9ya_screen.dart';

class NavigationController extends ChangeNotifier {
  final List<NavigationItem> _screens = [
    NavigationItem(
      screen: const Ro9yaScreen(),
      label: 'Home',
      icon: 'home',
    ),
    NavigationItem(
      screen: const Ro9yaScreen(),
      label: 'Contact',
      icon: 'phone',
    ),
    NavigationItem(
      screen: const Ro9yaScreen(),
      label: 'Favorites',
      icon: 'star',
    ),
    NavigationItem(
      screen: const Ro9yaScreen(),
      label: 'Profile',
      icon: 'profile',
    ),
  ];

  UnmodifiableListView get screens =>
      UnmodifiableListView(_screens.map((i) => i.screen).toList().reversed);
  UnmodifiableListView get labels =>
      UnmodifiableListView(_screens.map((i) => i.label).toList().reversed);
  UnmodifiableListView get icons =>
      UnmodifiableListView(_screens.map((i) => i.icon).toList().reversed);

  late int currentIndex;

  late Widget currentScreen;

  NavigationController() {
    currentIndex = 0;
    currentScreen = screens[currentIndex];
  }

  void navigateTo(Widget screen, {int? index}) {
    currentScreen = screen;
    if (index != null) {
      currentIndex = index;
    }
    notifyListeners();
  }
}
