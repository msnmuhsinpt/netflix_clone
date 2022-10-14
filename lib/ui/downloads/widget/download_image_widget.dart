import 'dart:math';

import 'package:flutter/material.dart';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    this.angle = 0,
    required this.size,
    required this.imageList,
    required this.margin,
  }) : super(key: key);
  final EdgeInsets margin;
  final double angle;
  final String imageList;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
