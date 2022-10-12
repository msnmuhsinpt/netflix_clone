import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';
import '../../../widget/app_Text_view_widget.dart';
import '../../../widget/main_title_widget.dart';


const _imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx4bKrBc_g_bWMWBVoOzsL12AzN8HKap-0pEqXOWKc9TT3LDrZ7mLB7Z4cz8NjHuWoNzM&usqp=CAU';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainTitleWidget(title: 'Top Search'),
          dividerSH(),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              itemCount: 15,
              separatorBuilder: (context, index) => dividerH(),
              itemBuilder: (context, index) {
                return topSearchListWidget(context);
              },
            ),
          )
        ],
      )),
    );
  }

  Widget topSearchListWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: screenWidth(context) * 0.35,
          height: 60,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(_imageUrl),
            ),
          ),
        ),
        dividerW(),
        Expanded(
            child: appTextView(name: "Movies Name", size: 17, isBold: true)),
        const CircleAvatar(
          backgroundColor: aWhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: bgColor,
            radius: 23,
            child: Center(
              child: Icon(
                Icons.play_arrow_sharp,
                color: aWhite,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
