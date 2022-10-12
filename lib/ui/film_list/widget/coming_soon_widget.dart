import 'package:flutter/material.dart';
import 'package:netflix_clone/ui/film_list/widget/video_widget.dart';

import '../../../core/app_color.dart';
import '../../../core/constant.dart';
import '../../../widget/app_Text_view_widget.dart';
import '../../home/widget/custom_button_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dividerSH(),
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appTextView(
                      name: 'JAN', size: 18, isBold: true, color: aGrey),
                  appTextView(name: '15', size: 18, isBold: true, color: aGrey),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth(context) - 50,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //video widget
                 const VideoWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      appTextView(name: 'Avenger', isBold: true, size: 30),
                      const CustomButtonWidget(
                        text: 'Remind me',
                        icon: Icons.doorbell_outlined,
                      ),
                      const CustomButtonWidget(
                        text: 'info',
                        icon: Icons.info,
                      )
                    ],
                  ),
                  dividerSH(),
                  appTextView(name: 'Coming soon', isBold: true),
                  dividerSH(),
                  appTextView(name: 'Tall Girl 2', isBold: true, size: 18),
                  dividerSH(),
                  appTextView(
                      name:
                          "Introduction (with title, release date,\n background information) Summary of the story.\nAnalysis of the plot elements (rising action, climax)\n Creative elements (dialogues, characters, \n use of colors, camera techniques",
                      maxLines: 5)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
