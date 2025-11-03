import '../../app/app_flavor.dart';
import '../../app/service_locator.dart';
import '../enums/flavor_enum.dart';

class EndPoints {
  static final AppFlavor _flavor = serviceLocator<AppFlavor>();
  static const String _baseUrlDev = 'http://prepared.ziara-eg.com/api/MerchandiseApp/';
  static const String _baseUrlStage = 'http://prepared.ziara-eg.com/api/MerchandiseApp/';
  static const String _baseUrlProd = 'http://ziara-eg.com/api/MerchandiseApp/';
  static final String _baseUrl = _flavor.flavor == Flavor.dev
      ? _baseUrlDev
      : _flavor.flavor == Flavor.stage
      ? _baseUrlStage
      : _baseUrlProd;

  static String get baseUrl => _baseUrl;

  static String login = '${_baseUrl}login';
  static String changePassword = '${_baseUrl}change-password';
  static String getUserStatus = '${_baseUrl}get-user-status';
  static String getUserProfile = '${_baseUrl}profile';
  static String logout = '${_baseUrl}logout';
  static String getUserSchedule = '${_baseUrl}get-user-schedule';
  static String startVisit = '${_baseUrl}start-visit';
  static String endVisit = '${_baseUrl}end-visit';
  static String getCategories = '${_baseUrl}get-categories';
  static String uploadPhotosBefore = '${_baseUrl}upload-photos-before';
  static String uploadPhotosAfter = '${_baseUrl}upload-photos-after';
  static String uploadInventory = '${_baseUrl}upload-inventory';
  static String getPrivacyPolicy = '${_baseUrl}get-privacy-policy';
  static String getVisitsReport = '${_baseUrl}get-visits-chart';
  static String getVisitsSummary = '${_baseUrl}get-visits-users';
  static String getVisitDetails = '${_baseUrl}get-visit-details';
  static String getDownloadVisitPhotosLink = '${_baseUrl}download-visit';
  static String getCurrentAppVersion = '${_baseUrl}get-version-app';
  static String getMyVisits = '${_baseUrl}get-my-visits';
  static String getCustomers = '${_baseUrl}get-customers';
  static String getBranches = '${_baseUrl}get-branches';
  static String submitEmergencyRequest = '${_baseUrl}request-emergency-visit';
  static String getNotifications = '${_baseUrl}get-request-emergency';
  static String acceptEmergentRequest = '${_baseUrl}confirmed-request-emergency';
  static String rejectEmergentRequest = '${_baseUrl}rejected-request-emergency';
  static String getMyUsers = '${_baseUrl}my-users';
  static String getShelfShare = '${_baseUrl}share-details';
  static String uploadShelfShare = '${_baseUrl}upload-shelf-share';
}
