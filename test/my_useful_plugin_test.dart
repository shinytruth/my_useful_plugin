import 'package:flutter_test/flutter_test.dart';
import 'package:my_useful_plugin/my_useful_plugin.dart';
import 'package:my_useful_plugin/my_useful_plugin_platform_interface.dart';
import 'package:my_useful_plugin/my_useful_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyUsefulPluginPlatform
    with MockPlatformInterfaceMixin
    implements MyUsefulPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyUsefulPluginPlatform initialPlatform = MyUsefulPluginPlatform.instance;

  test('$MethodChannelMyUsefulPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyUsefulPlugin>());
  });

  test('getPlatformVersion', () async {
    MyUsefulPlugin myUsefulPlugin = MyUsefulPlugin();
    MockMyUsefulPluginPlatform fakePlatform = MockMyUsefulPluginPlatform();
    MyUsefulPluginPlatform.instance = fakePlatform;

    expect(await myUsefulPlugin.getPlatformVersion(), '42');
  });
}
