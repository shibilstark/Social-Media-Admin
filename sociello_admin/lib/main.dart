import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sociello_admin/application/theme/theme_bloc.dart';
import 'package:sociello_admin/core/themes/themes.dart';
import 'package:sociello_admin/presentation/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final HydratedBloc.storage =   await HydratedStorage.build(
  //     storageDirectory: await getApplicationDocumentsDirectory());

  final storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  await Firebase.initializeApp();
  await Hive.initFlutter();
  // await configureInjection();
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: commonBlack,
  // ));

  HydratedBlocOverrides.runZoned(() => runApp(MyApp()), storage: storage);
}

class MyApp extends StatelessWidget {
  late final AppRouter appRouter;

  MyApp({Key? key}) : super(key: key) {
    appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ThemeBloc(),
              ),
            ],
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp(
                  theme: state.isDark ? MyTheme.darkTheme : MyTheme.lightTheme,
                  // theme: MyTheme.darkTheme,
                  debugShowCheckedModeBanner: false,
                  // showPerformanceOverlay: true,
                  onGenerateRoute: appRouter.onGenerateRoute,
                );
              },
            ),
          );
        });
  }
}
