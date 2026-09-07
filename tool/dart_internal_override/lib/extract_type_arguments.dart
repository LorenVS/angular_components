
/// Given an [Iterable], invokes [extract], passing the [iterable]'s type
/// argument as the type argument to the generic function.
///
/// Example:
///
/// ```dart
/// Object iterable = <int>[];
/// print(extractIterableTypeArgument(iterable, <T>() => new Set<T>());
/// // Prints "Instance of 'Set<int>'".
/// ```
Object? extractIterableTypeArgument(
        Iterable iterable, Object? Function<T>() extract) => extract<Object?>();

/// Given a [Map], invokes [extract], passing the [map]'s key and value type
/// arguments as the type arguments to the generic function.
///
/// Example:
///
/// ```dart
/// class Two<A, B> {}
///
/// main() {
///   Object map = <String, int>{};
///   print(extractMapTypeArguments(map, <K, V>() => new Two<K, V>());
///   // Prints "Instance of 'Two<String, int>'".
/// }
/// ```
Object? extractMapTypeArguments(Map map, Object? Function<K, V>() extract) =>
    extract<Object?, Object?>();
