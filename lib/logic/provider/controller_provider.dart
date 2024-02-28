import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:suhu_udara/logic/model/dashboard_model.dart';

class ControllerProvider extends ChangeNotifier {
  int airTemp;
  int airHumidity;
  int pHLevel;

  ControllerProvider({
    this.airTemp = 0,
    this.airHumidity = 0,
    this.pHLevel = 0,
  });

  void getEverything() {
    DatabaseReference _ref;
    _ref = FirebaseDatabase.instance.ref();
    _ref.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      var decoded = Map<String, dynamic>.from(data as Map<dynamic, dynamic>);
      var converted = Dashboard.fromJson(decoded);
      airTemp = converted.airTemperature?.toInt() ?? 0;
      airHumidity = converted.airHumidity?.toInt() ?? 0;
      pHLevel = converted.pHLevel?.toInt() ?? 0;
      notifyListeners();
    });
  }
}