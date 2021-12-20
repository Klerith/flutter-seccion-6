import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp ),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt ),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list ),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined ),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card ),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined ),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded ),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded ),
    MenuOption(route: 'slider', name: 'Slider && Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScrol & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined ),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

    for (final option in menuOptions ) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : ( BuildContext context ) => const HomeScreen(),
  //   'listview1': ( BuildContext context ) => const Listview1Screen(),
  //   'listview2': ( BuildContext context ) => const Listview2Screen(),
  //   'alert'    : ( BuildContext context ) => const AlertScreen(),
  //   'card'     : ( BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {        
      return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
      );
  }

}