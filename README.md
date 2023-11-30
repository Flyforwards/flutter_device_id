# flutter_device_id

Get current  deviceId from within the Flutter application. Android(android_Id), IOS(IDFV)


## Platform Support

| Android | iOS |
| :-----: | :-: |
|   ✔️    | ✔️  |

## Usage

```dart
import 'package:flutter_device_id/flutter_device_id.dart';

final _flutterDeviceIdPlugin = FlutterDeviceId();

String? deviceId = await _flutterDeviceIdPlugin.getDeviceId() ?? '';

```
