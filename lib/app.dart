import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_test/core/navigation/app_router.dart';
import 'package:solid_software_test/core/theme/dark_theme.dart';
import 'package:solid_software_test/core/theme/light_theme.dart';

final _appRouter = AppRouter();

final _routeConfig = _appRouter.config();

/// The main Widget of the Application.
///
/// Here we set up The application. Title, routing, themes etc.
class App extends StatelessWidget {
  /// Creates the instance of the [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Solid Software Test',
      routerConfig: _routeConfig,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
