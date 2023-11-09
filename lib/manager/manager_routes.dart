part of 'manager_path_routes.dart';

class ManagerRoutes {
  ManagerRoutes._();

  static String onboarding = '/onboarding_screen';

  static Map<String, Widget Function(BuildContext context)> manager = {
    onboarding: (context) => const Onboarding(),
  };
}
