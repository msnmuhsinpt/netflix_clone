import 'package:flutter/material.dart';
import 'package:netflix_clone/core/app_color.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:netflix_clone/widget/app_Text_view_widget.dart';
import 'package:netflix_clone/widget/app_appBar.dart';

import '../widget/download_image_widget.dart';

final List imageList = [icPoster1, icPoster2, icPoster3];

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  final _listWidget = const [
    _SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppAppBar(title: 'Downloads')),
      body: ListView.separated(
        padding: commonPaddingLR5,
        itemCount: _listWidget.length,
        separatorBuilder: (context, index) => dividerH(),
        itemBuilder: (context, index) => _listWidget[index],
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.settings,
          size: 25,
          color: aWhite,
        ),
        dividerSW(),
        appTextView(name: "Smart Downloads", isBold: true, size: 20),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appTextView(
            name: 'Introduction Downloads For You', isBold: true, size: 20),
        dividerSH(),
        appTextView(
            name:
                "We will download a personalised selection of\nmovies and shows for you so there's\nalways something to watch on your\ndevice",
            maxLines: 5),
        SizedBox(
          width: screenWidth(context),
          height: screenWidth(context),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: screenWidth(context) * 0.35,
                backgroundColor: Colors.grey.withOpacity(0.6),
              ),
              // download image widget
              DownloadImageWidget(
                size: Size(
                    screenWidth(context) * 0.35, screenWidth(context) * 0.55),
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 170, top: 50),
                angle: 20,
              ),
              DownloadImageWidget(
                size: Size(
                    screenWidth(context) * 0.35, screenWidth(context) * 0.55),
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 170, top: 50),
                angle: -20,
              ),
              DownloadImageWidget(
                size: Size(
                    screenWidth(context) * 0.4, screenWidth(context) * 0.6),
                imageList: imageList[2],
                margin: const EdgeInsets.only(bottom: 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: screenWidth(context) - 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: aBlue),
            onPressed: () {},
            child: appTextView(name: "Set Up", isBold: true),
          ),
        ),
        SizedBox(
          width: screenWidth(context) - 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: aWhite),
              onPressed: () {},
              child: appTextView(
                  name: "See What can download", color: bgColor, isBold: true)),
        ),
      ],
    );
  }
}
