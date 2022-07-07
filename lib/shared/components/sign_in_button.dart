import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        primary: const Color(0xFFE94976),
        fixedSize: Size(width * 0.85, height * 0.057),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        side: const BorderSide(
          color: Colors.white,
          width: 1.0,
          style: BorderStyle.solid
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 2),
            child: Image(
              height: 15,
              width: 15,
              image: AssetImage(icon),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
        ],
      )
    );
  }
}