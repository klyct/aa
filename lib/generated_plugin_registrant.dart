// ignore: depend_on_referenced_packages
import 'package:image_picker_for_web/image_picker_for_web.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins(Registrar registrar) {
  ImagePickerPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
