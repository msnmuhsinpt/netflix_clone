import 'package:flutter/material.dart';
import 'package:netflix_clone/ui/dowloads/screen/downolads_screen.dart';

import '../../film_list/screen/film_list_screen.dart';
import '../../home/screen/home_screen.dart';
import '../../search/screen/search_screen.dart';
import '../widget/bottom_navigation_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final _pages = const [
    HomeScreen(),
    FilmListScreen(),
    SearchScreen(),
     DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
