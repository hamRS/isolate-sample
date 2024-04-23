// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'f6a8d7614fdce6ba99b8d96d26a32100b2e49a0c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [httpClient].
@ProviderFor(httpClient)
const httpClientProvider = HttpClientFamily();

/// See also [httpClient].
class HttpClientFamily extends Family<Object?> {
  /// See also [httpClient].
  const HttpClientFamily();

  /// See also [httpClient].
  HttpClientProvider call({
    required String baseUrl,
  }) {
    return HttpClientProvider(
      baseUrl: baseUrl,
    );
  }

  @override
  HttpClientProvider getProviderOverride(
    covariant HttpClientProvider provider,
  ) {
    return call(
      baseUrl: provider.baseUrl,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'httpClientProvider';
}

/// See also [httpClient].
class HttpClientProvider extends AutoDisposeProvider<Object?> {
  /// See also [httpClient].
  HttpClientProvider({
    required String baseUrl,
  }) : this._internal(
          (ref) => httpClient(
            ref as HttpClientRef,
            baseUrl: baseUrl,
          ),
          from: httpClientProvider,
          name: r'httpClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$httpClientHash,
          dependencies: HttpClientFamily._dependencies,
          allTransitiveDependencies:
              HttpClientFamily._allTransitiveDependencies,
          baseUrl: baseUrl,
        );

  HttpClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(
    Object? Function(HttpClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HttpClientProvider._internal(
        (ref) => create(ref as HttpClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Object?> createElement() {
    return _HttpClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HttpClientProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HttpClientRef on AutoDisposeProviderRef<Object?> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _HttpClientProviderElement extends AutoDisposeProviderElement<Object?>
    with HttpClientRef {
  _HttpClientProviderElement(super.provider);

  @override
  String get baseUrl => (origin as HttpClientProvider).baseUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
