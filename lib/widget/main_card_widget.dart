import 'package:flutter/cupertino.dart';

const _imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjBP2E7JDKyy6gngyMnkb7D0y3WqOuQNMWC_93oTVdSB-0AjWGeSxfELTs-Fe9euhWSVk&usqp=CAU';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(_imageUrl),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
