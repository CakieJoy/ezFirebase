// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EzFirebase {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  // Realtime Database'e veri göndermek
  static Future<void> AddDB({
    required String ref,
    required String name,
    required dynamic data,
  }) async {
    await _database.ref(ref).child(name).set(data);
  }

  // Realtime Database'den veri almak ve değeri döndürmek
  static Future<dynamic> GetDB({required String ref}) async {
    final snapshot = await _database.ref(ref).once();
    return snapshot.snapshot.value; // .value'yu ekledik
  }

  // RTDB'de olan veriyi güncellemek
  static Future<dynamic> UpdateData({
    required String ref,
    required dynamic new_data,
  }) async {
    await _database.ref(ref).set(new_data);
  }

  // RTDB'de olan veriyi silmek
  static Future<dynamic> RemoveData({required String ref}) async {
    await _database.ref(ref).remove();
  }

  // Firebase Authentication ile kullanıcı kaydı
  static Future<dynamic> SignUp({
    required String email,
    required String password,
    required dynamic extra,
  }) async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        );
    await _database
        .ref("users")
        .child("${userCredential.user?.uid}")
        .set(extra);
  }

  // Firebase Authentication ile kullanıcı girişi (TEST EDİLMEDİ)
  static Future<dynamic> LogIn({
    required String email,
    required String password,
  }) async {
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        );
  }
}
