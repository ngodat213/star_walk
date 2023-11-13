import 'package:flutter/material.dart';
import 'package:star_walk/generated/l10n.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/images.dart';
import 'package:star_walk/themes/text_styles.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: MediaQuery.of(context).size.height,
            image: const AssetImage(Images.imageBackground),
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'SKY WALK',
                style: TxtStyle.h3,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 30,
                    child: Divider(color: AppColors.white),
                  ),
                  Text(
                    S.of(context).sky_map,
                    style: TxtStyle.h3,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 90,
                    child: Text(
                      S.of(context).description_app,
                      style: const TextStyle(color: AppColors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
