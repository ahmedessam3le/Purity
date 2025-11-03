import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_view_model_states.dart';

class LoginViewModel extends Cubit<LoginViewModelStates> {
  LoginViewModel() : super(LoginInitialState());

  GlobalKey<FormState>? formKey;
  TextEditingController? userCodeController;
  TextEditingController? passwordController;

  void init() {
    formKey = GlobalKey<FormState>();
    userCodeController = TextEditingController();
    passwordController = TextEditingController();
  }

  bool _isPasswordHidden = true;

  bool get isPasswordHidden => _isPasswordHidden;

  void changePasswordVisibility() {
    _isPasswordHidden = !_isPasswordHidden;
    emit(LoginChangePasswordVisibilityState());
  }

  Future<void> login(BuildContext context) async {
    if (!formKey!.currentState!.validate()) {
      return;
    }
    emit(LoginLoadingState());

    // var loginResponse = await loginUsecase(
    //   context: context,
    //   userCode: userCodeController!.text,
    //   password: passwordController!.text,
    // );

    // loginResponse.fold(
    //   (failure) {
    //     Logger.print(title: 'Login ERROR', message: failure.message.toString());
    //     emit(LoginErrorState(failure.message.toString()));
    //   },
    //   (user) async {
    //     passwordController?.clear();
    //     emit(LoginSuccessState());
    //   },
    // );

    await Future.delayed(Duration(milliseconds: 750));
    emit(LoginSuccessState());
  }

  void dispose() {
    close().then((value) {
      userCodeController!.clear();
      passwordController!.clear();
      userCodeController!.dispose();
      passwordController!.dispose();
      formKey = null;
    });
  }
}
