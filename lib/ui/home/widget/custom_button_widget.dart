import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../widget/app_Text_view_widget.dart';

class CustomButtonWidget extends StatelessWidget {
 final double iconSize;
  final double textSize;
  final IconData icon;
  final String text;

  const CustomButtonWidget({
    Key? key,
    required this.text,
    required this.icon,
    this.iconSize = 25,
    this.textSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: iconSize,
            color: aWhite,
          ),
        ),
        appTextView(name: text, color: aWhite, size: textSize),
      ],
    );
  }
}
