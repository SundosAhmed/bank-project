import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Signinbloc {
  TextEditingController usernsme = TextEditingController();
  TextEditingController password = TextEditingController();
  final storage = FlutterSecureStorage();
  bool rememberMyIdChecked = false;
  bool useFingerPrintChecked = false;

  savingRemrmberMyid(String value) async {
    await storage.write(key: "rememberMyIdChecked", value: value);
  }

  Future<String> readRemrmberMyid() async {
    return await storage.read(key: "rememberMyIdChecked") ?? "";
  }

  savefingerprint(bool value) async {
    await storage.write(key: "useFingerPrintChecked", value: value.toString());
  }

  Future<bool> readfigerprint() async {
    return await storage.read(key: "useFingerPrintChecked") == "true";
  }

  bool validation() {
    if (usernsme.text.isEmpty || password.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
