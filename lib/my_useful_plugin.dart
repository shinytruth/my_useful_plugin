
import 'my_useful_plugin_platform_interface.dart';

class MyUsefulPlugin {
  Future<String?> getPlatformVersion() {
    return MyUsefulPluginPlatform.instance.getPlatformVersion();
  }
}
