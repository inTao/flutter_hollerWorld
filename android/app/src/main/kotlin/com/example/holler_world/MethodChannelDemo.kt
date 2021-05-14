package com.example.holler_world

import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/**
 * description：
 * @author inTao
 * @date 2021/5/7 09:58
 */
class MethodChannelDemo(messenger: BinaryMessenger) : MethodChannel.MethodCallHandler {
    private var channel: MethodChannel = MethodChannel(messenger, "MethodChannelKits")

    init {
        channel.setMethodCallHandler(this)
    }

    /**
     * Handles the specified method call received from Flutter.
     *
     *
     * Handler implementations must submit a result for all incoming calls, by making a single
     * call on the given [Result] callback. Failure to do so will result in lingering Flutter
     * result handlers. The result may be submitted asynchronously. Calls to unknown or
     * unimplemented methods should be handled using [Result.notImplemented].
     *
     *
     * Any uncaught exception thrown by this method will be caught by the channel implementation
     * and logged, and an error result will be sent back to Flutter.
     *
     *
     * The handler is called on the platform thread (Android main thread). For more details see
     * [Threading in
 * the Flutter Engine](https://github.com/flutter/engine/wiki/Threading-in-the-Flutter-Engine).
     *
     * @param call A [MethodCall].
     * @param result A [Result] used for submitting the result of the call.
     */
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {

        if (call.method == "getString") {
            val name :String? = call.argument("name")
            val age :Int? = call.argument("age")
            val list = mutableListOf<String>()
            for (index in 0 .. (age?:0)){
                list.add("$name age is $index")
            }
            result.success(list)
        }

    }
}