import 'package:flutter/material.dart';
import 'package:money_master/firebase_options.dart';
import 'package:money_master/mony_master.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MoneyMaster());
}
