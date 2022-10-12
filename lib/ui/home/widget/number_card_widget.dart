import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

const _imageUrl =
    'https://files.oyebesmartest.com/uploads/simthumbnail/money-heist-netflix-wallpjbzyu.webp';

class NumberCardWidget extends StatelessWidget {
  final int index;

  const NumberCardWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 250,
              width: 130,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_imageUrl),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -20,
          left: 10,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: aWhite,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 120,
                  color: bgColor,
                  decoration: TextDecoration.none,
                  decorationColor: bgColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}
