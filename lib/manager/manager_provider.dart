import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:star_walk/screens/onboarding/cubit/onboarding_cubit.dart';

class ManagerProvider {
  ManagerProvider._();

  static List<SingleChildWidget> provider = [
    BlocProvider(create: (context) => OnboardingCubit()),
  ];
}
