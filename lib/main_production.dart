import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'core/approutes/app_routes.dart';
import 'core/appthemes/app_themes.dart';
import 'core/config/app_config.dart';
import 'core/config/app_environments.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.setEnvironment(Flavors.production);
  timeago.setLocaleMessages('en_short', timeago.EnShortMessages());

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit())],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, isDarkMode) {
        final theme = isDarkMode ? ThemeCubit.darkMode : ThemeCubit.lightMode;

        return MaterialApp.router(
          theme: theme,
          routerConfig: appRouter,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
