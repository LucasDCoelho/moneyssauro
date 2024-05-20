import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moneyssauro/src/app_module.dart';
import 'package:moneyssauro/src/app_widget.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initializeFirebase(); 
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}


/// Initialize firebase
void initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
}
