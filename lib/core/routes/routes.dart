import 'package:go_router/go_router.dart';
import 'package:isolate_test/feature/isolate/presentation/views/isolate_home.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: IsolateHomePage.routeName,
    builder: (context, state) => const IsolateHomePage(),
    routes: const [],
  ),
]);
