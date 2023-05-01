import Flutter
import UIKit

public class MyUsefulPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_useful_plugin", binaryMessenger: registrar.messenger())
    let instance = MyUsefulPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS custom " + UIDevice.current.systemVersion)
  }
}
