import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';
import '../../../widget/app_Text_view_widget.dart';
import '../../../widget/main_title_card.dart';
import '../widget/main_image_widget.dart';
import '../widget/number_title_card_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
const _netFlixImageUrl =
    'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  return scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      // main Image
                      const MainImageWidget(),
                      dividerSH(),
                      // mainCard =====> past year
                      const MainTitleCard(
                        title: 'Released in the past year',
                      ),
                      dividerSH(),
                      // mainCard =====> trading now
                      const MainTitleCard(
                        title: 'Trading Now',
                      ),
                      dividerSH(),
                      // Number card =====> Top 10
                      const NumberTitleCard(),
                      dividerSH(),
                      // mainCard =====> tense Dream
                      const MainTitleCard(
                        title: 'Tense Dream',
                      ),
                      dividerSH(),
                      // mainCard =====> South Cinema
                      const MainTitleCard(
                        title: 'South Indian Cinema',
                      ),
                    ],
                  ),
                  //scrolling true show icons
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(microseconds: 1000),
                          height: 90,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    _netFlixImageUrl,
                                    width: 60,
                                    height: 60,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    size: 30,
                                    color: aWhite,
                                  ),
                                  dividerSW(),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    color: aBlue,
                                  ),
                                  dividerSW(),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  appTextView(name: 'TV Show', isBold: true),
                                  appTextView(name: 'Movies', isBold: true),
                                  appTextView(name: 'Categories', isBold: true),
                                ],
                              ),
                              dividerSH(),
                            ],
                          ),
                        )
                      : dividerSH(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
