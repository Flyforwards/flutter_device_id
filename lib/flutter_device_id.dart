import 'flutter_device_id_platform_interface.dart';

class FlutterDeviceId {
  Future<String?> getDeviceId() {
    return FlutterDeviceIdPlatform.instance.getDeviceId();
  }
}
