import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('lib/shared/assets/logo_tinder.png'),
      height: 100,
      width: 180,
    );
  }
}