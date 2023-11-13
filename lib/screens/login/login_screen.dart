import 'package:flutter/material.dart';
import 'package:star_walk/generated/l10n.dart';
import 'package:star_walk/screens/login/widgets/signin_form.dart';
import 'package:star_walk/screens/login/widgets/signup_form.dart';
import 'package:star_walk/themes/images.dart';
import 'package:star_walk/themes/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late PageController _pageController;
  double _progess = 0;

  @override
  void initState() {
    _pageController = PageController()
      ..addListener(() {
        setState(() {
          _progess = _pageController.page ?? 0;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              Images.imageEarth,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset(
                      Images.imageLogo,
                      width: 64,
                    ),
                    Text(
                      S.of(context).app_name.toUpperCase(),
                      style: TxtStyle.h3,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height * 0.5 + _progess * 150,
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: PageView(
                    controller: _pageController,
                    children: const [
                      SigninForm(),
                      SignupForm(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
