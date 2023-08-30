#include "include/flutter_custom_widget/flutter_custom_widget_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_custom_widget_plugin.h"

void FlutterCustomWidgetPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_custom_widget::FlutterCustomWidgetPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
