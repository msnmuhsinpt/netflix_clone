import 'package:flutter/material.dart';

import '../../../core/constant.dart';
import '../../../widget/main_title_widget.dart';

const _imageUrl =
    'https://i.pinimg.com/originals/62/94/4a/62944a08803343aea1be121735d55b0d.jpg';

class ResultIdleWidget extends StatelessWidget {
  const ResultIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MainTitleWidget(title: 'Movies & TV'),
        dividerSH(),
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.4,
          children: List.generate(
            20,
            (index) => mainCard(context),
          ),
        )),
      ],
    );
  }

  Widget mainCard(BuildContext context) {
    return Container(
      width: screenWidth(context),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(_imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
