import 'package:flutter/material.dart';
import 'package:mockup_02_flutter/shared/components/go_back_button.dart';
import 'package:mockup_02_flutter/shared/components/logo.dart';
import 'package:mockup_02_flutter/shared/components/sign_in_button.dart';
import 'package:mockup_02_flutter/shared/components/terms_and_policy.dart';
import 'package:mockup_02_flutter/shared/components/trouble_signing_in_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final appleIcon = 'lib/shared/assets/logo_apple.png';
  final facebookIcon = 'lib/shared/assets/logo_facebook.png';
  final bubbleIcon = 'lib/shared/assets/bubble.png';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;

    if(width <= 700) {
      return Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFEE7462),
                Color(0xFFE94976)
              ]
            )
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.06),
                width: width,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: GoBackButton()
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.28),
                child: const Logo(),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.08),
                child: const TermsAndPolicy()
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.03),
                child: Column(
                  children: [
                    SignInButton(
                      width: width,
                      height: height,
                      icon: appleIcon,
                      title: 'SIGN IN WITH APPLE',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      child: SignInButton(
                        width: width,
                        height: height,
                        icon: facebookIcon,
                        title: 'SIGN IN WITH FACEBOOK',
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      child: SignInButton(
                        width: width,
                        height: height,
                        icon: bubbleIcon,
                        title: 'SIGN IN WITH PHONE NUMBER',
                      )
                    )
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.01),
                child: const TroubleSigningInButton()
              )
            ],
          ),
        )
      );
    } else {
      return Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFEE7462),
                Color(0xFFE94976)
              ]
            )
          ),
          child: Stack(
            children: [
              Positioned(
                left: width * 0.03,
                top: height * 0.05,
                child: const GoBackButton()
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Logo(),
                      TermsAndPolicy(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignInButton(
                          width: width,
                          height: height,
                          icon: appleIcon,
                          title: 'SIGN IN WITH APPLE',
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height * 0.01),
                          child: SignInButton(
                            width: width,
                            height: height,
                            icon: facebookIcon,
                            title: 'SIGN IN WITH FACEBOOK',
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height * 0.01),
                          child: SignInButton(
                            width: width,
                            height: height,
                            icon: bubbleIcon,
                            title: 'SIGN IN WITH PHONE NUMBER',
                          )
                        ),
                        const TroubleSigningInButton()
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      );
    }
  }

}