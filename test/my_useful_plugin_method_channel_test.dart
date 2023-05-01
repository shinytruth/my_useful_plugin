import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_useful_plugin/my_useful_plugin_method_channel.dart';

void main() {
  MethodChannelMyUsefulPlugin platform = MethodChannelMyUsefulPlugin();
  const MethodChannel channel = MethodChannel('my_useful_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
