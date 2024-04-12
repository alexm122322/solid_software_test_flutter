// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:solid_software_test/clean_architecture/presentation/colors/clean_architecture_page.dart'
    as _i1;
import 'package:solid_software_test/cubit/cubit_page.dart' as _i2;
import 'package:solid_software_test/root_page.dart' as _i3;
import 'package:solid_software_test/states/state_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CleanArchitectureRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: _i1.CleanArchitecturePage()),
      );
    },
    CubitRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: _i2.CubitPage()),
      );
    },
    RootRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.RootPage(),
      );
    },
    StateRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.StatePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CleanArchitecturePage]
class CleanArchitectureRoute extends _i5.PageRouteInfo<void> {
  const CleanArchitectureRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CleanArchitectureRoute.name,
          initialChildren: children,
        );

  static const String name = 'CleanArchitectureRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CubitPage]
class CubitRoute extends _i5.PageRouteInfo<void> {
  const CubitRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CubitRoute.name,
          initialChildren: children,
        );

  static const String name = 'CubitRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RootPage]
class RootRoute extends _i5.PageRouteInfo<void> {
  const RootRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.StatePage]
class StateRoute extends _i5.PageRouteInfo<void> {
  const StateRoute({List<_i5.PageRouteInfo>? children})
      : super(
          StateRoute.name,
          initialChildren: children,
        );

  static const String name = 'StateRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
