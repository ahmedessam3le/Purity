abstract class SplashViewStates {}

class SplashInitialState extends SplashViewStates {}

class SplashInternetState extends SplashViewStates {}

class SplashNoInternetState extends SplashViewStates {}

class SplashErrorState extends SplashViewStates {
  final String error;

  SplashErrorState(this.error);
}
