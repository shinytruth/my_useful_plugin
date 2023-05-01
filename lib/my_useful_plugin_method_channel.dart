import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_useful_plugin_platform_interface.dart';

/// An implementation of [MyUsefulPluginPlatform] that uses method channels.
class MethodChannelMyUsefulPlugin extends MyUsefulPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_useful_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
