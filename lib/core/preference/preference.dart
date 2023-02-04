import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  SharedPreferences? _preference;

  _initialize() async {
    _preference = await SharedPreferences.getInstance();
  }

  Future<bool> saveValue<T>(String key, T value) async {
    if (_preference == null) {
      await _initialize();
    }

    if (value is String) {
      return await _preference?.setString(key, value) ?? false;
    }

    if (value is bool) {
      return await _preference?.setBool(key, value) ?? false;
    }

    if (value is int) {
      return await _preference?.setInt(key, value) ?? false;
    }

    if (value is double) {
      return await _preference?.setDouble(key, value) ?? false;
    }

    if (value is List<String>) {
      return await _preference?.setStringList(key, value) ?? false;
    }

    return false;
  }

  Future<String?> getString(String key) async {
    if (_preference == null) {
      await _initialize();
    }

    return _preference?.getString(key);
  }

  Future<int?> getInt(String key) async {
    if (_preference == null) {
      await _initialize();
    }

    return _preference?.getInt(key);
  }

  Future<bool?> getBool(String key) async {
    if (_preference == null) {
      await _initialize();
    }

    return _preference?.getBool(key);
  }

  Future<double?> getDouble(String key) async {
    if (_preference == null) {
      await _initialize();
    }

    return _preference?.getDouble(key);
  }

  Future<List<String>?> getStringList(String key) async {
    if (_preference == null) {
      await _initialize();
    }

    return _preference?.getStringList(key);
  }

  clear() async {
    if (_preference == null) {
      await _initialize();
    }

    return _preference?.clear();
  }
}
