import 'package:go_router/go_router.dart';
import 'package:go_router_app/models/article_model/article.dart';
import 'package:go_router_app/screens/error_screen.dart';
import 'package:go_router_app/screens/home_screen.dart';
import 'package:go_router_app/screens/login_screen.dart';
import 'package:go_router_app/screens/splash_screen.dart';
import 'package:go_router_app/viewmodels/article_detail.dart';

class AppRouter {
  late final router = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/loginScreen',
          name: 'loginScreen',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
            path: '/homeScreen',
            name: 'homeScreen',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                  path: 'article-detail',
                  name: 'article-detail',
                  builder: (context, state) {
                    final article = state.extra as Article;
                    return ArticleDetail(article: article);
                  })
            ]),
      ],
      errorBuilder: (context, state) => ErrorScreen(
            error: state.toString(),
          ));
}
