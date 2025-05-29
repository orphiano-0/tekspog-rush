import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tekspogs/features/game/presentation/screens/arena_field.dart';
import 'package:tekspogs/features/game/presentation/screens/friendly_field.dart';
import 'package:tekspogs/features/game/presentation/screens/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => fadeTransition(HomePage(), state),
    ),
    GoRoute(
      path: '/arena',
      pageBuilder: (context, state) => fadeTransition(ArenaField(), state),
    ),
    GoRoute(
      path: '/friendly',
      pageBuilder: (context, state) => fadeTransition(FriendlyField(), state),
    ),
  ],
);

CustomTransitionPage fadeTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
