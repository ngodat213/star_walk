import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/images.dart';
import 'package:star_walk/themes/text_styles.dart';

class ConstallationScreen extends StatefulWidget {
  const ConstallationScreen({super.key});

  @override
  State<ConstallationScreen> createState() => SconstallationScreenState();
}

class SconstallationScreenState extends State<ConstallationScreen> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                    Text(
                      'Constallations',
                      style: TxtStyle.h3,
                    ),
                    const Icon(
                      Icons.search_rounded,
                      color: AppColors.white,
                    )
                  ],
                ),
              ),
              Text('2023.11.11', style: TxtStyle.text),
              const SizedBox(height: 32),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        Icon(Icons.explore_outlined, color: AppColors.white),
                        Text('Northern sky'),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('11:11'),
                        Icon(Icons.schedule_rounded, color: AppColors.white),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Image.asset(
                  Images.imageScorpion,
                  color: AppColors.white,
                ),
              ),
              CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: const Color(0xff595959),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.height * 0.2,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Image.asset(
                        Images.imageScorpion,
                        color: AppColors.white,
                      ),
                    ),
                  );
                },
                carouselController: carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 0.42,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 11),
              AnimatedSmoothIndicator(
                effect: const ExpandingDotsEffect(
                  dotHeight: 4,
                  dotWidth: 11,
                  spacing: 5,
                  activeDotColor: Colors.white,
                ),
                activeIndex: currentIndex,
                count: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
