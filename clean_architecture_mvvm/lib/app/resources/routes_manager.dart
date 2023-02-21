import 'package:clean_architecture_mvvm/app/configs/route_name.dart';
import 'package:clean_architecture_mvvm/presentation/my_home/my_home_screen.dart';
import 'package:clean_architecture_mvvm/presentation/post/post_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    RouteName.myHomeScreen: (BuildContext context) => const MyHomePageScreen(
          title: "App",
        ),
    RouteName.postScreen: (BuildContext context) => const PostDemoScreen(),
  };
}
