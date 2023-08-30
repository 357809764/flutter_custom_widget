import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_custom_widget_method_channel.dart';

abstract class FlutterCustomWidgetPlatform extends PlatformInterface {
  /// Constructs a FlutterCustomWidgetPlatform.
  FlutterCustomWidgetPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCustomWidgetPlatform _instance = MethodChannelFlutterCustomWidget();

  /// The default instance of [FlutterCustomWidgetPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCustomWidget].
  static FlutterCustomWidgetPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCustomWidgetPlatform] when
  /// they register themselves.
  static set instance(FlutterCustomWidgetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
