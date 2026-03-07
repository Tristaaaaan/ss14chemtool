import 'package:go_router/go_router.dart';

import '../../features/buffers/presentation/screen/buffers_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return BuffersScreen();
      },
    ),
  ],
);
