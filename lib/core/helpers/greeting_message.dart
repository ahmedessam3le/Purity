import '../utils/strings_manager.dart';

String greetingMessage() {
  var timeNow = DateTime.now().hour;

  if (timeNow <= 12) {
    return AppStrings.goodMorning;
  } else if ((timeNow > 12) && (timeNow <= 16)) {
    return AppStrings.goodAfterNoon;
  } else if ((timeNow > 16) && (timeNow < 20)) {
    return AppStrings.goodEvening;
  } else {
    return AppStrings.goodNight;
  }
}
