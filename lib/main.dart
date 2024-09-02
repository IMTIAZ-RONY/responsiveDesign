
import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/screen/app.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // if(Platform.isWindows||Platform.isLinux||Platform.isMacOS){await windowManager.ensureInitialized();
  //
  // WindowOptions windowOptions = const WindowOptions(
  //   size: Size(400, 600),
  //   center: true,
  // );
  // windowManager.waitUntilReadyToShow(windowOptions, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });}
  runApp(const ResponsivieDesign());
}
