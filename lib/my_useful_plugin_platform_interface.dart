import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_useful_plugin_method_channel.dart';

abstract class MyUsefulPluginPlatform extends PlatformInterface {
  /// Constructs a MyUsefulPluginPlatform.
  MyUsefulPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyUsefulPluginPlatform _instance = MethodChannelMyUsefulPlugin();

  /// The default instance of [MyUsefulPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyUsefulPlugin].
  static MyUsefulPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyUsefulPluginPlatform] when
  /// they register themselves.
  static set instance(MyUsefulPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
