


import 'export.dart';
// global providers
class ProviderScope extends StatelessWidget {
  const ProviderScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DashboardProvider>(create: (_) => DashboardProvider()),
        ChangeNotifierProvider<CategoryProvider>(create: (_) => CategoryProvider()),
        ChangeNotifierProvider<PackEventProvider>(create: (_) => PackEventProvider()),
      ],
      child: child,
    );
  }
}
