import 'package:flutter/material.dart';
import 'package:star_walk/generated/l10n.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/images.dart';
import 'package:star_walk/themes/text_styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Data = [
      {
        'Constellation',
        'https://i.pinimg.com/564x/86/50/66/86506614fab5d68a2f90a4c1efc1b46e.jpg'
      },
      {
        'Solar System',
        'https://i.pinimg.com/564x/6a/96/e3/6a96e3ef52f0ff2697306207eef41d2c.jpg'
      },
      {
        'Nebula',
        'https://i.pinimg.com/736x/57/09/0c/57090c9064bebaa07035f2e47edc7902.jpg'
      },
      {
        'Satellite',
        'https://hoanghamobile.com/tin-tuc/wp-content/webp-express/webp-images/uploads/2023/09/hinh-nen-phi-hanh-gia-23-300x169.jpg.webp'
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xff060606),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/b3/37/19/b33719e4ba88097aa617ceebe1e1bd77.jpg'))),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Image.asset(Images.imageLogo, width: 64),
                    Text(
                      S.of(context).app_name.toUpperCase(),
                      style: TxtStyle.h1.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      width: 50,
                      child: const Divider(
                        color: AppColors.white,
                        height: 0.5,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        S.of(context).main_screen_title,
                        style: TxtStyle.text,
                      ),
                    ),
                    SpaceNowGridView(Data: Data),
                    Container(
                      margin: const EdgeInsets.only(top: 32, bottom: 10),
                      child: Text(
                        S.of(context).astronomical_news,
                        style: TxtStyle.labelStyle,
                      ),
                    ),
                    const NewCard(),
                  ],
                ),
                const Positioned(
                  right: 0,
                  child: Icon(
                    Icons.search_rounded,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xff272727),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://i.pinimg.com/564x/72/55/22/7255223b2d5c0f19e73f3e836d9e8e5c.jpg',
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Huge Asteroid Will Pass Close To Earth',
                    style: TxtStyle.title,
                  ),
                  const Text('Sep 11/2023')
                ],
              ),
            ),
          ),
          const Spacer(),
          const Icon(Icons.chevron_right, color: AppColors.white)
        ],
      ),
    );
  }
}

class SpaceNowGridView extends StatelessWidget {
  const SpaceNowGridView({
    super.key,
    required this.Data,
  });

  final List<Set<String>> Data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 54, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).space_now,
                style: TxtStyle.labelStyle,
              ),
              Text(
                '2020.09.11',
                style: TxtStyle.inputStyle,
              ),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: Data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(Data[index].last),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Text(
                    Data[index].first,
                    style: TxtStyle.title,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
