import 'package:mobile_scanner/mobile_scanner.dart';

abstract class HomeViewStates {}

class HomeInitialState extends HomeViewStates {}

class HomeBarcodeLoadedState extends HomeViewStates {
  final Barcode barcode;

  HomeBarcodeLoadedState(this.barcode);
}

class HomeBarcodeNotExistState extends HomeViewStates {}

class HomeInternetState extends HomeViewStates {}

class HomeNoInternetState extends HomeViewStates {}

class HomeErrorState extends HomeViewStates {
  final String error;

  HomeErrorState(this.error);
}
