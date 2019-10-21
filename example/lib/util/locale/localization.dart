import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

//============================================================//
//THIS FILE IS AUTO GENERATED. DO NOT EDIT//
//============================================================//
class Localization {
  Map<dynamic, dynamic> _localisedValues = Map();

  static Localization of(BuildContext context) => Localizations.of<Localization>(context, Localization);
  
  static Future<Localization> load(Locale locale, {bool isInTest = false}) async {
    final localizations = Localization();
    if (isInTest) {
      return localizations;
    }
    final jsonContent = await rootBundle.loadString('assets/locale/${locale.languageCode}.json');
    final Map<String, dynamic> values = json.decode(jsonContent);
    localizations._localisedValues = values;
    return localizations;
  }

  String _t(String key, {List<dynamic> args}) {
    try {
      String value = _localisedValues[key];
      if (value == null) return '⚠$key⚠';
      if (args == null || args.isEmpty) return value;
      args.asMap().forEach((index, arg) => value = _replaceWith(value, arg, index + 1));
      return value;
    } catch (e) {
      return '⚠$key⚠';
    }
  }

  String _replaceWith(String value, arg, argIndex) {
    if (arg == null) return value;
    if (arg is String) {
      return value.replaceAll('%$argIndex\$s', arg);
    } else if (arg is num) {
      return value.replaceAll('%$argIndex\$d', '$arg');
    }
    return value;
  }

  String get appTitle => _t('app_title');

  String get backgroundCancelAllTasks => _t('background_cancel_all_tasks');

  String get backgroundPeriodicNetworkTask => _t('background_periodic_network_task');

  String get backgroundPeriodicTask => _t('background_periodic_task');

  String get backgroundSimpleTask => _t('background_simple_task');

  String get backgroundTitle => _t('background_title');

  String get retryBtn => _t('retry_btn');

  String userClickMessage(String arg1) => _t('user_click_message', args: [arg1]);

  String get usersNotFound => _t('users_not_found');

  String get welcomeMessage => _t('welcome_message');

}
