import 'package:dhw_music_app/pages/home/category_banner.dart';
import 'package:flutter/material.dart';

import 'notification_area.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: 357,
      child: Stack(children: [
        NotificationArea(screenSize: screenSize),
        Column(
          children: const <Widget>[
            SizedBox(
              height: 137,
            ),
            CategoryBanner()
          ],
        )
      ]),
    );
  }
}
