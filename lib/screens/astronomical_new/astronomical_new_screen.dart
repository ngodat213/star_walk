import 'package:flutter/material.dart';
import 'package:star_walk/generated/l10n.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/text_styles.dart';

class AstronomicalNewScreen extends StatelessWidget {
  const AstronomicalNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_rounded,
                    color: AppColors.white,
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    color: AppColors.white,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.search_rounded,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                S.of(context).astronomical_news,
                style: TxtStyle.title,
              ),
              const AstronomicalNewCard(),
              const AstronomicalNewCard(),
              const AstronomicalNewCard(),
            ],
          ),
        ),
      )),
    );
  }
}

class AstronomicalNewCard extends StatelessWidget {
  const AstronomicalNewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: MediaQuery.of(context).size.height / 4 - 16,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://i.pinimg.com/564x/4a/f9/45/4af945b9de542f78cdf653d9465cadd9.jpg',
              ))),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 32, left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('New', style: TxtStyle.text),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'Huge Asteroid Will Pass Close To Earth',
                    style: TxtStyle.title,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sep 11/2023',
                  style: TxtStyle.text,
                ),
                const SizedBox(height: 12),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadiusDirectional.circular(100),
                  ),
                  child: const Icon(
                    Icons.arrow_right_alt_sharp,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
          ),
          const Positioned(
            top: 16,
            right: 16,
            child: Row(
              children: [
                Icon(
                  Icons.share,
                  color: AppColors.white,
                  size: 20,
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.bookmark,
                  color: AppColors.white,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
