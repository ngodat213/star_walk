part of 'onboarding_cubit.dart';

class OnboardingState extends Equatable {
  final int index;
  const OnboardingState({
    required this.index,
  });

  OnboardingState copyWith({
    int? index,
  }) {
    return OnboardingState(
      index: index ?? this.index,
    );
  }

  factory OnboardingState.initial() {
    return const OnboardingState(index: 0);
  }

  @override
  List<Object> get props => [index];
}
