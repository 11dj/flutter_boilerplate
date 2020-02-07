import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:flutter_boilerplate/ui/views/first_view.dart';
import 'package:flutter_boilerplate/ui/views/counter_view.dart';
import 'package:flutter_boilerplate/ui/views/user_view.dart';
import 'package:flutter_boilerplate/ui/views/no_found_view.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstView(title: 'Home Page'));
      case 'counter':
        return MaterialPageRoute(builder: (_) => CounterView());
      case 'user':
        return MaterialPageRoute(builder: (_) => UserView());
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
