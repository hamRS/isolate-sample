import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isolate_test/bootstrap.dart';
import 'package:isolate_test/core/http_client/infrastructure/providers/http_client_provider.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() {
  bootstrap(
    () => ProviderScope(
      overrides: [
        httpClientProvider.getProviderOverride(
          httpClientProvider(
            baseUrl: 'https://dummyjson.com/',
          ),
        ),
      ],
      child: const IsolatesApp(),
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
