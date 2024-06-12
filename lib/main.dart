import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/common/theme/app_theme.dart';
import 'features/dependency_injection.dart';
import 'features/auth/blocs/auth_bloc/auth_bloc.dart';
import 'router.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
        ),
       
      ],
      child:  MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'myapp',
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          routerConfig: AppRoute.call(),
        )
    );
    
  }
}
