import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'agora_rtm_plugin_platform_interface.dart';

/// An implementation of [AgoraRtmPluginPlatform] that uses method channels.
class MethodChannelAgoraRtmPluginStructure extends AgoraRtmPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('io.agora.rtm');

  @override
  Future<dynamic> sendMethodMessage(
      String call, String method, Map? arguments) {
    return methodChannel
        .invokeMethod(method, {"call": call, "params": arguments});
  }
}
