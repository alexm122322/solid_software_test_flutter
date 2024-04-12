import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test/core/extension.dart';
import 'package:solid_software_test/cubit/random_color_cubit/random_color_value_cubit.dart';

/// The page of Cubit state manager approach.
///
/// The page prints 'Hello there' on the middle of the screen.
/// Changes color by tapping on the screen.
@RoutePage()
class CubitPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => RandomColorValueCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RandomColorValueCubit>();
    final textTheme = context.textTheme;

    return BlocBuilder<RandomColorValueCubit, int>(
      builder: (_, colorValue) {
        return GestureDetector(
          onTap: cubit.updateState,
          child: Scaffold(
            backgroundColor: Color(colorValue),
            body: Center(
              child: Text(
                'common.hello'.tr(),
                style: textTheme.displayLarge,
              ),
            ),
          ),
        );
      },
    );
  }
}
