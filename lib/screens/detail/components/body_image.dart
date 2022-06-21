import 'package:flutter/material.dart';

import '../../../constants.dart';

class body_image extends StatelessWidget {
  const body_image({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.6,
      width: size.width / 1.5,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: kPrimaryColor.withOpacity(0.7),
          )
        ],
        image: const DecorationImage(
          image: AssetImage("assets/images/img.jpg"),
        ),
      ),
    );
  }
}
