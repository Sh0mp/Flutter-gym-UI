import 'package:application/constants.dart';
import 'package:flutter/material.dart';

class body_text extends StatelessWidget {
  const body_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 35,
        right: 35,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "title\n".toUpperCase(),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: "type".toUpperCase(),
                  style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
        ),
        Text(
          "\$price",
          style: TextStyle(fontSize: 18),
        ),
      ]),
    );
  }
}
