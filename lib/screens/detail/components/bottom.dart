import 'package:application/constants.dart';
import 'package:application/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 65,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
              )),
            ),
            onPressed: () {},
            child: const Text(
              'Koupit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
            width: size.width / 2,
            height: 65,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kBackgroundColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                )),
              ),
              onPressed: () {},
              child: const Text(
                'Více',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ))
      ],
    ));
  }
}
