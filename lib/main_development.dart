import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ss14chemtool/features/buffers/data/datasource/local/buffers_local_datasource.dart';
import 'package:ss14chemtool/features/buffers/data/repositories/buffer_repo_impl.dart';
import 'package:ss14chemtool/features/buffers/domain/usecases/get_buffers.dart';
import 'package:ss14chemtool/features/buffers/presentation/cubit/buffers_cubit.dart';
import 'package:ss14chemtool/shared/ui/molecules/cubit/sort_cubit.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:window_manager/window_manager.dart';

import 'core/approutes/app_routes.dart';
import 'core/appthemes/app_themes.dart';
import 'core/config/app_config.dart';
import 'core/config/app_environments.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.setEnvironment(Flavors.development);
  timeago.setLocaleMessages('en_short', timeago.EnShortMessages());

  // Must add this line.
  await windowManager.ensureInitialized();
  // if (Platform.isMacOS) {
  //   WindowOptions windowOptions = WindowOptions(
  //     size: Size(1920, 1080),
  //     center: true,
  //     // backgroundColor: Colors.transparent,
  //     // skipTaskbar: false,
  //     // titleBarStyle: TitleBarStyle.values[0],
  //   );
  // }

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => SortCubit()),
        BlocProvider(
          create: (_) {
            final repo = BufferRepositoryImpl(
              buffersLocalDatasource: BuffersLocalDatasourceImpl(),
            );
            return BuffersCubit(getBuffersUseCase: GetBuffers(repo));
          },
        ),
      ],
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
