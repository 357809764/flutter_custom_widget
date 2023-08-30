#ifndef FLUTTER_PLUGIN_FLUTTER_CUSTOM_WIDGET_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_CUSTOM_WIDGET_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_custom_widget {

class FlutterCustomWidgetPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterCustomWidgetPlugin();

  virtual ~FlutterCustomWidgetPlugin();

  // Disallow copy and assign.
  FlutterCustomWidgetPlugin(const FlutterCustomWidgetPlugin&) = delete;
  FlutterCustomWidgetPlugin& operator=(const FlutterCustomWidgetPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_custom_widget

#endif  // FLUTTER_PLUGIN_FLUTTER_CUSTOM_WIDGET_PLUGIN_H_
