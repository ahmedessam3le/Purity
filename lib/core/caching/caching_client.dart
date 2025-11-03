abstract class CachingClient {
  Future<bool> set({required String key, required dynamic value});

  dynamic get({required String key});

  Future<bool> remove({required String key});

  void clear();
}
