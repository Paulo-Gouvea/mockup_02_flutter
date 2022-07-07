import 'package:flutter/material.dart';

class TroubleSigningInButton extends StatelessWidget {
  const TroubleSigningInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Trouble Signing In?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14
        ),
      ),
    );
  }
}