import 'package:flutter/material.dart';
import 'package:fl_components/pages/pages.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'Listview 1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'Listview 2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.list_alt_sharp),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_rounded),
    MenuOption(
        route: 'card',
        name: 'Card Widget',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Circle avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Texts Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider & Check',
        screen: const SliderScreen(),
        icon: Icons.reviews_sharp),
      MenuOption(
        route: 'listviewbuilder',
        name: 'InfinityScroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_outlined)        
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

/*     static Map<String, Widget Function(BuildContext)> routes ={
         'home': (BuildContext context ) => const HomeScreen(),
        'listview1': (BuildContext context ) => const Listview1Screen(),
        'listview2': (BuildContext context ) => const Listview2Screen(),
        'alert': (BuildContext context ) => const AlertScreen(),
        'card': (BuildContext context ) => const CardScreen()
    }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
