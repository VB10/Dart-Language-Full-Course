class ProductConfig {
  static final ProductConfig instance = ProductConfig._("a");

  final String apiKey;

  ProductConfig._(this.apiKey);
}

class ProductLazySingleton {
  static ProductLazySingleton? _instace;
  static ProductLazySingleton get instance {
    if (_instace == null) _instace = ProductLazySingleton._init();
    return _instace!;
  }

  ProductLazySingleton._init();
}
