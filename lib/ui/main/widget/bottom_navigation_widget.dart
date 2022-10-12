import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) => indexChangeNotifier.value = index,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: bgColor,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_outline), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: ''),
            ]);
      },
    );
  }
}
