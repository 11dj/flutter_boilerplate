import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import './ui/views/home_view.dart';
import './ui/views/first_view.dart';
import './ui/views/no_found_view.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'counter':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/':
        return MaterialPageRoute(builder: (_) => FirstView(title: 'Home Page'));
      // case RoutePaths.Post:
      //   var post = settings.arguments as Post;
      //   return MaterialPageRoute(builder: (_) => PostView(post: post));
      default:
        return MaterialPageRoute(builder: (_) => NotFoundView(title: settings.name));
        // MaterialPageRoute(
        //     builder: (_) => Scaffold(
        //           body: Center(
        //             child: Text('No route defined for ${settings.name}'),
        //           ),
        //         ));
    }
  }
}
