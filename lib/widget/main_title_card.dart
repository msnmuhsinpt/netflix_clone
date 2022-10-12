import 'package:flutter/cupertino.dart';

import '../core/constant.dart';
import 'main_card_widget.dart';
import 'main_title_widget.dart';

class MainTitleCard extends StatelessWidget {
  final String title;

  const MainTitleCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Align(
          alignment: Alignment.topLeft,
          child: MainTitleWidget(title: title),
        ),
        dividerSH(),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(15, (index) => const MainCard()),
          ),
        ),
      ],
    );
  }
}
