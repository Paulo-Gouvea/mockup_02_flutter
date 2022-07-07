import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.chevron_left_rounded,
        color: Colors.white,
        size: 45,
      ),
      label: const Text(
        ''
      ),
    );
  }

}