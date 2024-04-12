import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test/clean_architecture/application/colors/get_random_color_value/get_random_color_value_bloc.dart';
import 'package:solid_software_test/core/di/injection.dart';
import 'package:solid_software_test/core/extension.dart';
import 'package:solid_software_test/widgets/widgets.dart';

/// The page of Clean Architecture approach.
///
/// The page prints 'Hello there' on the middle of the screen.
/// Changes color by tapping on the screen.
@RoutePage()
class CleanArchitecturePage extends StatefulWidget implements AutoRouteWrapper {
  @override
  State<CleanArchitecturePage> createState() => _RandomColorsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GetRandomColorValueBloc>(),
      child: this,
    );
  }
}

class _RandomColorsPageState extends State<CleanArchitecturePage> {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GetRandomColorValueBloc>();
    final textTheme = context.textTheme;

    return BlocListener<GetRandomColorValueBloc, GetRandomColorValueState>(
      listener: (_, state) {
        state.whenOrNull(
          failure: (failure) {
            context.showFailureSnackBar(failure);
          },
          loaded: (colorValue) {
            setState(() {
              _backgroundColor = Color(colorValue);
            });
          },
        );
      },
      child: OnPressedWidget(
        onPressed: () {
          bloc.add(const GetRandomColorValueEvent.get());
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
      ),
    );
  }
}
