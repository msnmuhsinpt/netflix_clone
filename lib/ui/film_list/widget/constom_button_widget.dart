import 'package:flutter/material.dart';

import '../../../widget/app_Text_view_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: 16,
          ),
        ),
        appTextView(name: 'Remind me', size: 14),
        appTextView(
            name:
            "Introduction (with title, release date,\n background information) Summary of the story.\nAnalysis of the plot elements (rising action, climax)\n Creative elements (dialogues, characters, \n use of colors, camera techniques",
            maxLines: 5),

      ],
    );
  }
}
