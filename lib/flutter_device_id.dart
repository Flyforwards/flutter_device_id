
import 'flutter_device_id_platform_interface.dart';

class FlutterDeviceId {
  Future<String?> getPlatformVersion() {
    return FlutterDeviceIdPlatform.instance.getPlatformVersion();
  }
}
