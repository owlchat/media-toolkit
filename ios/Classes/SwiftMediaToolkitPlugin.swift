import Flutter
import UIKit

public class SwiftMediaToolkitPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "media_toolkit", binaryMessenger: registrar.messenger())
    let instance = SwiftMediaToolkitPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public static func dummyMethodToEnforceBundling() {
      owlchat_media_toolkit_dispatch(0, nil, 0)
  }
}
