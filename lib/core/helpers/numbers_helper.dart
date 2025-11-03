import 'package:get/get.dart';

class NumbersHelper {
  static bool isValidCount(String count) {
    if (count.isEmpty) {
      count = '0';
    }
    if (count.isNum) {
      if (int.tryParse(count) != null) {
        if (int.tryParse(count)! >= 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  static int convertAppVersionToInt(String version) {
    var versionWithOutDots = version.split('.').join('');
    return int.parse(versionWithOutDots);
  }
}
