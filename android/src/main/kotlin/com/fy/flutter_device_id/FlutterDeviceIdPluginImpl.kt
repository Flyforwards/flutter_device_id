package com.fy.flutter_device_id

import android.annotation.SuppressLint
import android.content.Context
import android.provider.Settings
import androidx.annotation.NonNull
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class FlutterDeviceIdPluginImpl(private val context: Context) : MethodChannel.MethodCallHandler {

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: MethodChannel.Result) {
        if (call.method == FlutterDeviceIdConstants.DEVICE_ID) {
            val android = getAndroidId()
            if (android.isEmpty()) {
                result.success("")
            }
            result.success(getAndroidId())
        } else {
            result.notImplemented()
        }
    }


    @SuppressLint("HardwareIds")
    private fun getAndroidId(): String {
        return Settings.Secure.getString(context.contentResolver, Settings.Secure.ANDROID_ID)
    }
}