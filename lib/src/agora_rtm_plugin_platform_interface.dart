import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'agora_rtm_plugin_method_channel.dart';

abstract class AgoraRtmPluginPlatform extends PlatformInterface {
  /// Constructs a TestPluginStructurePlatform.
  AgoraRtmPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AgoraRtmPluginPlatform _instance = MethodChannelAgoraRtmPluginStructure();

  /// The default instance of [AgoraRtmPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTestPluginStructure].
  static AgoraRtmPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AgoraRtmPluginPlatform] when
  /// they register themselves.
  static set instance(AgoraRtmPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<dynamic> sendMethodMessage(
      String call, String method, Map? arguments) {
    throw UnimplementedError('sendMethodMessage() has not been implemented.');
  }
}
