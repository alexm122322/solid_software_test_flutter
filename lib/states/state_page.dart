import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_test/core/constants.dart';
import 'package:solid_software_test/core/extension.dart';
import 'package:solid_software_test/widgets/widgets.dart';

/// The page of Flutter Widget State management approach.
///
/// The page prints 'Hello there' on the middle of the screen.
/// Changes color by tapping on the screen.
@RoutePage()
class StatePage extends StatefulWidget {
  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  final _random = math.Random();
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return OnPressedWidget(
      onPressed: () {
        setState(() {
          _backgroundColor = Color(_random.nextInt(maxColorValue + 1));
        });
      },
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
          child: Text(
            'common.hello'.tr(),
            style: textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
