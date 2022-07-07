import 'package:flutter/material.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'By tapping Create Account or Sign In, you agree to our',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.5
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Terms',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.5,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Text(
                '. Learn how we process your data in our ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Privacy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.5,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Policy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.5,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Text(
                ' and ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Cookies Policy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.5,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Text(
                '.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.5,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

}