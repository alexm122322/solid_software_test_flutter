import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:solid_software_test/core/navigation/app_router.gr.dart';

/// The root page of the Application.
///
/// The page consists [BottomNavigationBar] for navigating between approaches.
@RoutePage()
class RootPage extends StatefulWidget {
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CleanArchitectureRoute(),
        CubitRoute(),
        StateRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index == _currentIndex) return;
            setState(() {
              _currentIndex = index;
            });
            tabsRouter.setActiveIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.adb_outlined),
              label: "titles.clean_architecture".tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.adb_outlined),
              label: "titles.cubit".tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.adb_outlined),
              label: "titles.state".tr(),
            ),
          ],
        );
      },
    );
  }
}
