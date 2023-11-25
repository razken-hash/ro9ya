import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ro9ya/screens/ro9ya_nav.dart';
import 'package:ro9ya/utils/providers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Ro9yaApp());
}

class Ro9yaApp extends StatelessWidget {
  const Ro9yaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData.light(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: const Ro9yaNavScreen(),
        );
      },
    );
  }
}
