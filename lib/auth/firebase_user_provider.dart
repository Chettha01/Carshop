import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CarShopFirebaseUser {
  CarShopFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

CarShopFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CarShopFirebaseUser> carShopFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<CarShopFirebaseUser>(
        (user) => currentUser = CarShopFirebaseUser(user));
