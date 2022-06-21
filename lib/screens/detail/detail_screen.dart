import 'package:application/screens/detail/components/bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../detail/components/body.dart';
import '../home_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: BottomWidget(),
    );
  }
}
