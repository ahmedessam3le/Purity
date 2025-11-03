import 'package:package_info_plus/package_info_plus.dart';

import '../helpers/numbers_helper.dart';

class AppVersionService {
  AppVersionService();

  late String currentAppVersion;

  Future<void> init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    currentAppVersion = packageInfo.version;
  }

  bool isUpdateAvailable(String version) {
    int deviceAppVersion = NumbersHelper.convertAppVersionToInt(currentAppVersion);
    int latestAppVersion = NumbersHelper.convertAppVersionToInt(version);
    return latestAppVersion > deviceAppVersion;
  }
}
