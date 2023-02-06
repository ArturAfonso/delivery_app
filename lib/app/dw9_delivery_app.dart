import 'package:dw9_delivery_app/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class DwpDeliveryApp extends StatelessWidget {
  const DwpDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Delivery App",
      theme: ThemeConfig.theme,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
