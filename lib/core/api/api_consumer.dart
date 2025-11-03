import 'package:flutter/material.dart';

abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool useAccessToken = false,
    required BuildContext context,
  });
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool useAccessToken = false,
    bool formDataIsEnabled = false,
    required BuildContext context,
  });
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool useAccessToken = false,
    required BuildContext context,
  });

  Future<dynamic> download(
    BuildContext context,
    String url,
    String savePath,
  );
}
