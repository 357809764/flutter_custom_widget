import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_custom_widget_platform_interface.dart';

/// An implementation of [FlutterCustomWidgetPlatform] that uses method channels.
class MethodChannelFlutterCustomWidget extends FlutterCustomWidgetPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_custom_widget');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
