import 'dart:js';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'agora_rtm_plugin_platform_interface.dart';

/// A web implementation of the TestPluginStructurePlatform of the TestPluginStructure plugin.
class AgoraRtmPluginWeb extends AgoraRtmPluginPlatform {
  /// Constructs a TestPluginStructureWeb
  AgoraRtmPluginWeb();

  static void registerWith(Registrar registrar) {
    AgoraRtmPluginPlatform.instance = AgoraRtmPluginWeb();
  }

  final JsObject agoraRtm = context['AgoraRTM'];

  @override
  Future<dynamic> sendMethodMessage(
      String call, String method, Map? arguments) {
    throw UnimplementedError('sendMethodMessage() has not been implemented.');
  }
}
