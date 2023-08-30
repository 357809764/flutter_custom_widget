import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_custom_widget/flutter_custom_widget.dart';
import 'package:flutter_custom_widget/flutter_custom_widget_platform_interface.dart';
import 'package:flutter_custom_widget/flutter_custom_widget_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCustomWidgetPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCustomWidgetPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCustomWidgetPlatform initialPlatform = FlutterCustomWidgetPlatform.instance;

  test('$MethodChannelFlutterCustomWidget is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCustomWidget>());
  });

  test('getPlatformVersion', () async {
    FlutterCustomWidget flutterCustomWidgetPlugin = FlutterCustomWidget();
    MockFlutterCustomWidgetPlatform fakePlatform = MockFlutterCustomWidgetPlatform();
    FlutterCustomWidgetPlatform.instance = fakePlatform;

    expect(await flutterCustomWidgetPlugin.getPlatformVersion(), '42');
  });
}
