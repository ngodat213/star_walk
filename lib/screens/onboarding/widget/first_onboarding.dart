import 'package:flutter/material.dart';
import 'package:star_walk/generated/l10n.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/images.dart';

class FirestOnboarding extends StatelessWidget {
  const FirestOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white70, blurRadius: 30, offset: Offset(20, 20)),
          ],
        ),
        child: Stack(
          children: [
            Transform.scale(
              scaleX: -1,
              child: Image.asset(
                Images.imageEarth,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    Image.asset(
                      Images.imageLogo,
                      width: 64,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            'Best Stargazing App',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            S.of(context).app_name.toUpperCase(),
                            style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
