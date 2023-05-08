import 'package:agora_rtm/src/agora_rtm_plugin_platform_interface.dart';
import 'package:flutter/services.dart';

class AgoraRtmPlugin {
  static Future<dynamic> callMethodForStatic(String name, Map? arguments) {
    return AgoraRtmPluginPlatform.instance
        .sendMethodMessage("static", name, arguments);
  }

  static Future<dynamic> callMethodForClient(String name, Map arguments) {
    return AgoraRtmPluginPlatform.instance
        .sendMethodMessage("AgoraRtmClient", name, arguments);
  }

  static Future<dynamic> callMethodForChannel(String name, Map arguments) {
    return AgoraRtmPluginPlatform.instance
        .sendMethodMessage("AgoraRtmChannel", name, arguments);
  }
}
