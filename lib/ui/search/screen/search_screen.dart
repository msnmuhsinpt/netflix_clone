import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';
import '../widget/result_idle_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CupertinoSearchTextField(
          backgroundColor: aLightGrey,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: aGrey,
          ),
          suffixIcon: Icon(
            Icons.close,
            color: aGrey,
          ),
          style: TextStyle(color: aWhite),
        ),
        dividerSH(),
        //top search
        //  const Expanded(child: SearchIdleWidget()),
        //movies & tv

        const Expanded(child: ResultIdleWidget()),
      ],
    ));
  }
}
