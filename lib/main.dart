import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() {
  runApp(
    const ProviderScope(
      child: IsolatesApp(),
    ),
  );
}

class IsolatesApp extends StatelessWidget {
  const IsolatesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Placeholder(),
      ),
    );
  }
}
