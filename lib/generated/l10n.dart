// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sky walk`
  String get app_name {
    return Intl.message(
      'Sky walk',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Easily find stars, planets and orther celestial objects in the sky above you in real time`
  String get description_app {
    return Intl.message(
      'Easily find stars, planets and orther celestial objects in the sky above you in real time',
      name: 'description_app',
      desc: '',
      args: [],
    );
  }

  /// `Sky map`
  String get sky_map {
    return Intl.message(
      'Sky map',
      name: 'sky_map',
      desc: '',
      args: [],
    );
  }

  /// `Solar System`
  String get solar_system {
    return Intl.message(
      'Solar System',
      name: 'solar_system',
      desc: '',
      args: [],
    );
  }

  /// `Extension Infomation`
  String get extension_info {
    return Intl.message(
      'Extension Infomation',
      name: 'extension_info',
      desc: '',
      args: [],
    );
  }

  /// `Learn about the object that you see in the sky, explore their internal structure and 3D models`
  String get solar_description {
    return Intl.message(
      'Learn about the object that you see in the sky, explore their internal structure and 3D models',
      name: 'solar_description',
      desc: '',
      args: [],
    );
  }

  /// `Sky Live`
  String get sky_live {
    return Intl.message(
      'Sky Live',
      name: 'sky_live',
      desc: '',
      args: [],
    );
  }

  /// `Customized Astronomy Expenrience`
  String get sky_live_info {
    return Intl.message(
      'Customized Astronomy Expenrience',
      name: 'sky_live_info',
      desc: '',
      args: [],
    );
  }

  /// `Allow you stargazing to be as simple or advenced as you desire.`
  String get sky_description {
    return Intl.message(
      'Allow you stargazing to be as simple or advenced as you desire.',
      name: 'sky_description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
