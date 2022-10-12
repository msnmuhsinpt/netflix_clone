import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';
import '../../../widget/app_Text_view_widget.dart';
import 'custom_button_widget.dart';

class MainImageWidget extends StatelessWidget {
  const MainImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(icMainPoster),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomButtonWidget(text: 'My List', icon: Icons.add),
            playButton(),
            const CustomButtonWidget(text: 'info', icon: Icons.info),
          ],
        )
      ],
    );
  }

  // play button
  Widget playButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(aWhite),
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow_sharp,
        size: 25,
        color: bgColor,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: appTextView(
          name: "Play",
          size: 20,
          color: bgColor,
        ),
      ),
    );
  }
}
