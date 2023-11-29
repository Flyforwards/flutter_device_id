import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_device_id/flutter_device_id.dart';
import 'package:flutter_device_id/flutter_device_id_platform_interface.dart';
import 'package:flutter_device_id/flutter_device_id_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterDeviceIdPlatform
    with MockPlatformInterfaceMixin
    implements FlutterDeviceIdPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterDeviceIdPlatform initialPlatform = FlutterDeviceIdPlatform.instance;

  test('$MethodChannelFlutterDeviceId is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterDeviceId>());
  });

  test('getPlatformVersion', () async {
    FlutterDeviceId flutterDeviceIdPlugin = FlutterDeviceId();
    MockFlutterDeviceIdPlatform fakePlatform = MockFlutterDeviceIdPlatform();
    FlutterDeviceIdPlatform.instance = fakePlatform;

    expect(await flutterDeviceIdPlugin.getPlatformVersion(), '42');
  });
}
