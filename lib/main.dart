import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vacations_app/view_models/list_of_service_view_model.dart';
import 'views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListOfServiceViewModel>(
      create: (context) => ListOfServiceViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
