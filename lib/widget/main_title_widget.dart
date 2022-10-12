import 'package:flutter/material.dart';

import 'app_Text_view_widget.dart';

class MainTitleWidget extends StatelessWidget {
  final String title;

  const MainTitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appTextView(name: title, isBold: true, size: 20);
  }
}
