package com.fy.flutter_device_id

import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel

/** FlutterDeviceIdPlugin */
class FlutterDeviceIdPlugin : FlutterPlugin {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, FlutterDeviceIdConstants.METHOD_CHANNEL_NAME)
        channel.setMethodCallHandler(FlutterDeviceIdPluginImpl(flutterPluginBinding.applicationContext))

    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
