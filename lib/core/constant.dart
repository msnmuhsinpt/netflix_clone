import 'package:flutter/material.dart';

//images

const icMainPoster = 'assets/images/ic_main_Image.jpg';
const icPoster1 = 'assets/images/poster 1.jpg';
const icPoster2 = 'assets/images/poster2.jpg';
const icPoster3 = 'assets/images/poster3.jpg';

//divider

Widget dividerH() {
  return const SizedBox(height: 20);
}

Widget dividerSH() {
  return const SizedBox(height: 8);
}

Widget dividerSW() {
  return const SizedBox(width: 8);
}

Widget dividerSSW() {
  return const SizedBox(width: 3);
}

Widget dividerW() {
  return const SizedBox(width: 20);
}

//screen size
double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

// padding size
EdgeInsets commonPaddingAll = const EdgeInsets.all(10);
EdgeInsets commonPaddingAllOnBoard = const EdgeInsets.all(50);
EdgeInsets commonPaddingAll5 = const EdgeInsets.all(5);
EdgeInsets commonPaddingLR = const EdgeInsets.only(left: 10, right: 10);
EdgeInsets commonPaddingTB = const EdgeInsets.only(top: 10, bottom: 10);
EdgeInsets commonPaddingTB5 = const EdgeInsets.only(top: 5, bottom: 5);
EdgeInsets commonPaddingLR5 = const EdgeInsets.only(left: 5, right: 5);
