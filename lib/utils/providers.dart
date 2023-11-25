import 'package:provider/provider.dart';
import 'package:ro9ya/controllers/navigation_controller.dart';

List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider<NavigationController>(
    create: (context) => NavigationController(),
  ),
];
