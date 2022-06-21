import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding / 6,
      ),
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(0, -7),
          blurRadius: 40,
          color: kPrimaryColor.withOpacity(0.4),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (() {}),
            icon: SvgPicture.asset(
              "assets/icons/more.svg",
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: SvgPicture.asset(
              "assets/icons/user-icon.svg",
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
