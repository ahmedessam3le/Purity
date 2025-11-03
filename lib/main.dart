import 'package:flutter/material.dart';
import 'package:purity/core/enums/flavor_enum.dart';

import 'app/app.dart';

Future<void> main() async {
  Widget app = await initializeApp(Flavor.dev);

  runApp(app);
}
