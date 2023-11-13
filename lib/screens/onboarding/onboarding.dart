import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_walk/screens/onboarding/cubit/onboarding_cubit.dart';
import 'package:star_walk/screens/onboarding/widget/dot_indicator.dart';
import 'package:star_walk/screens/onboarding/widget/first_onboarding.dart';
import 'package:star_walk/screens/onboarding/widget/second_onboarding.dart';
import 'package:star_walk/screens/onboarding/widget/solar_onboarding.dart';
import 'package:star_walk/screens/login/login_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return Stack(
            children: [
              PageView(
                reverse: false,
                onPageChanged: (index) =>
                    context.read<OnboardingCubit>().indexChanged(index),
                controller: PageController(
                  initialPage: 0,
                  keepPage: false,
                  viewportFraction: 1,
                ),
                pageSnapping: true,
                children: const [
                  FirestOnboarding(),
                  SecondOnboarding(),
                  Onboarding3(),
                  LoginScreen(),
                ],
              ),
              state.index != 3 ? const DotIndicator() : Container()
            ],
          );
        },
      ),
    );
  }
}
