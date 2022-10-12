import 'package:flutter/material.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.asset(
            icMainPoster,
            fit: BoxFit.cover,
          ),),
        Positioned(
          bottom: 0,
          right: 5,
          child: CircleAvatar(
            backgroundColor: bgColor.withOpacity(0.2),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_outlined,
                size: 22,
                color: aWhite,
              ),
            ),
          ),
        )
      ],
    );
  }
}