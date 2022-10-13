import 'package:flutter/material.dart';

import '../core/app_color.dart';
import '../core/constant.dart';
import 'app_Text_view_widget.dart';

class AppAppBar extends StatelessWidget {
  const AppAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        appTextView(name: title, isBold: true, size: 25),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            size: 30,
            color: aWhite,
          ),
        ),
        dividerSW(),
        Container(
          height: 25,
          width: 25,
          color: aBlue,
        ),
        dividerSW(),
      ],
    );
  }
}
