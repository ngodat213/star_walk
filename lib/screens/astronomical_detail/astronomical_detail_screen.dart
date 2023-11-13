import 'package:flutter/material.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/text_styles.dart';

class AstronomicalDetailScreen extends StatelessWidget {
  const AstronomicalDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: NetworkImage(
                    'https://i.pinimg.com/564x/4a/f9/45/4af945b9de542f78cdf653d9465cadd9.jpg',
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              'What to See in the Sky This Week: Stargazing Suggestions',
                              style: TxtStyle.h3,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.share,
                            color: AppColors.white,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.bookmark,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Sep 11/2023',
                        style: TxtStyle.text,
                      ),
                      const NewInfo(),
                      const NewInfo(),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 64,
              left: 16,
              child: Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewInfo extends StatelessWidget {
  const NewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Row(
          children: [
            Text(
              '• ',
              style: TxtStyle.h1.copyWith(color: Colors.blueAccent),
            ),
            Text(
              'The Planets of the week',
              style: TxtStyle.title,
            ),
            const SizedBox(width: 16),
            const Expanded(
              child: Divider(
                color: AppColors.white,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 18),
          child: Text(
            'Irure laboris dolor tempor cillum enim est sit aliqua aliquip nulla amet deserunt et eu. Et do enim ad enim aliqua veniam ad. Nulla ad eiusmod ullamco voluptate. Aliquip laborum aliquip proident exercitation id. Sunt cupidatat nostrud ex laborum eu sint qui eiusmod dolor pariatur et. Laboris ipsum anim exercitation sint magna id mollit qui in amet eiusmod.',
            style: TxtStyle.text.copyWith(wordSpacing: 1.5, height: 1.5),
          ),
        )
      ],
    );
  }
}
