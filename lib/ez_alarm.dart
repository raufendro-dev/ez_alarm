library ez_alarm;

import 'package:android_intent_plus/android_intent.dart';

/// A Calculator.
class ez_alarm {
  // /// Returns [value] plus 1.
  // int addOne(int value) => value + 1;
  set_alarm(String message, int hour, int minute, bool skip) async {
    AndroidIntent intent = AndroidIntent(
      action: 'android.intent.action.SET_ALARM',
      arguments: <String, dynamic>{
        'android.intent.extra.alarm.HOUR': hour,
        'android.intent.extra.alarm.MINUTES': minute,
        'android.intent.extra.alarm.SKIP_UI': skip,
        'android.intent.extra.alarm.MESSAGE': message,
      },
    );
    await intent.launch();
  }
}
