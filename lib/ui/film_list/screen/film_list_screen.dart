import 'package:flutter/material.dart';
import 'package:netflix_clone/widget/app_appBar.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';
import '../../../widget/app_Text_view_widget.dart';
import '../widget/coming_soon_widget.dart';
import '../widget/everyones_watching_widget.dart';

class FilmListScreen extends StatelessWidget {
  const FilmListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: const Duration(microseconds: 1000),
      initialIndex: 0,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: bgColor,
              title: appTextView(name: 'News & Hot', isBold: true, size: 25),
              actions: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: aWhite,
                ),
                dividerSW(),
                Container(
                  height: 10,
                  width: 20,
                  color: aBlue,
                ),
                dividerSW(),
              ],
              bottom: TabBar(
                isScrollable: true,
                labelColor: bgColor,
                indicator: BoxDecoration(
                  color: aWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                tabs: [
                  Tab(
                    child: appTextView(
                      name: "🍿 Coming soon",
                      isBold: true,
                      size: 18,
                    ),
                  ),
                  Tab(
                    child: appTextView(
                      name: "👀 Everyone Watching",
                      isBold: true,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
          children: [
          _comingSoonWidget(context),
      _everyOnesWatchingWidget(),
      ],
    )),
    );
  }

  Widget _comingSoonWidget(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget _everyOnesWatchingWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => const EveryOnesWatchingWidget());
  }
}
