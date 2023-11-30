import Flutter
import UIKit

public class FlutterDeviceIdPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: FlutterDeviceIdPluginConstants.METHOD_CHANNEL_NAME, binaryMessenger: registrar.messenger())
        let instance = FlutterDeviceIdPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case FlutterDeviceIdPluginConstants.DEVICE_ID:
            result(getIDFV())
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func getIDFV() -> String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
}
