import 'package:flutter/cupertino.dart';

import '../../../core/constant.dart';
import '../../../widget/main_title_widget.dart';
import 'number_card_widget.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: MainTitleWidget(
              title: 'Top 10 Tv Shows In India Today'),
        ),
        dividerSH(),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                15, (index) => NumberCardWidget(index: index)),
          ),
        ),
      ],
    );
  }
}
