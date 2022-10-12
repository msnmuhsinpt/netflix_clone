import 'package:flutter/material.dart';
import 'package:netflix_clone/ui/film_list/widget/video_widget.dart';

import '../../../core/constant.dart';
import '../../../widget/app_Text_view_widget.dart';
import '../../home/widget/custom_button_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dividerSH(),
        appTextView(name: "Friends", isBold: true, size: 18),
        dividerSH(),
        appTextView(
            name:
                "Introduction (with title, release date,\n background information) Summary of the story.\nAnalysis of the plot elements (rising action, climax)\n Creative elements (dialogues, characters, \n use of colors, camera techniques",
            maxLines: 5),
        dividerH(),
        //video widget
        const VideoWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              text: 'Share',
              icon: Icons.share,
              iconSize: 30,
            ),
            CustomButtonWidget(
              text: 'My List',
              icon: Icons.add,
              iconSize: 30,
            ),
            CustomButtonWidget(
              text: 'Play',
              icon: Icons.play_arrow,
              iconSize: 30,
            ),
          ],
        )
      ],
    );
  }
}
