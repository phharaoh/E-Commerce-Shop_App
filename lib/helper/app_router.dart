import 'package:go_router/go_router.dart';
import 'package:e_commerce_app/views/widgets/wrapper_home.dart';
import 'package:e_commerce_app/views/screens/sign_in_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/home', builder: (context, state) => const WrapperHome()),
    GoRoute(path: '/', builder: (context, state) => const SignInView()),
  ],
);
