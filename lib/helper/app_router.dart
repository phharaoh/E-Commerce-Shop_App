import 'package:go_router/go_router.dart';
import 'package:e_commerce_app/views/screens/home_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/', builder: (context, state) => const HomeView()),
  ],
);
