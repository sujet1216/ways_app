import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(fullscreenDialog: true, builder: (_) => SignUpScreen());
      default:
        return null;
      // case '/feed':
      //   return MaterialPageRoute(builder: (_) => FeedScreen());
      // case '/postAdd':
      //   return MaterialPageRoute(builder: (_) => PostAddScreen());
      // case '/profile':
      //   return MaterialPageRoute(builder: (_) => ProfileScreen());
      // case '/postEdit':
      //   final postId = settings.arguments as String;
      //   return MaterialPageRoute(builder: (_) => PostEditScreen(postId: postId));
      // default:
      //   return MaterialPageRoute(builder: (_) => NotFoundScreen());
    }
  }
}
