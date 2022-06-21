import 'package:application/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class productsWidget extends StatelessWidget {
  const productsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FlowerCards(
            image: 'assets/images/image_1.jpg',
            title: 'Protein',
            text: 'Best',
            price: 200,
          ),
          FlowerCards(
            image: 'assets/images/image_1.jpg',
            title: 'Gainer',
            text: 'Best',
            price: 300,
          ),
          FlowerCards(
            image: 'assets/images/image_1.jpg',
            title: 'Vitamin B',
            text: 'Best',
            price: 400,
          ),
          FlowerCards(
            image: 'assets/images/image_1.jpg',
            title: 'Kreatin',
            text: 'Best',
            price: 500,
          ),
        ],
      ),
    );
  }
}

class FlowerCards extends StatelessWidget {
  const FlowerCards({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
    required this.price,
  }) : super(key: key);

  final String image, title, text;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 1,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.3,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.2),
                    )
                  ]),
              child: Row(children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "$text",
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Text("\$$price"),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
