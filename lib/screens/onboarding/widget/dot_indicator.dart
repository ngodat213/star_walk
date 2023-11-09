import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_walk/screens/onboarding/cubit/onboarding_cubit.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: DotsIndicator(
              dotsCount: 4,
              position: state.index,
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.white,
                size: Size(5, 5),
              ),
            ),
          ),
        );
      },
    );
  }
}
