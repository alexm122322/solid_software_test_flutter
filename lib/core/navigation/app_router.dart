import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solid_software_test/core/navigation/app_router.gr.dart';

/// The Application setting of routing.
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        path: '/',
        page: RootRoute.page,
        initial: true,
        children: [
          AutoRoute(
            path: 'clean_architecture',
            page: CleanArchitectureRoute.page,
            title: (_, __) => 'main_tabs_titles.clean_architecture'.tr(),
          ),
          AutoRoute(
            path: 'cubit',
            page: CubitRoute.page,
            title: (_, __) => 'main_tabs_titles.cubit'.tr(),
          ),
          AutoRoute(
            path: 'state',
            page: StateRoute.page,
            title: (_, __) => 'main_tabs_titles.state'.tr(),
          ),
        ],
      ),
    ];
  }
}
