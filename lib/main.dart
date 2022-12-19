import 'package:ecommarce/moive/app/di.dart';
import 'package:flutter/material.dart';

import 'moive/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().initAppModeule();
  runApp(const MyApp());
}
