import 'package:application/constants.dart';
import 'package:application/screens/detail/components/body_image.dart';
import 'package:application/screens/detail/components/body_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../detail/components/bottom.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: kBackgroundColor,
          child: Column(
            children: [
              body_image(size: size),
              body_text(),
            ],
          ),
        ),
      ],
    );
  }
}
