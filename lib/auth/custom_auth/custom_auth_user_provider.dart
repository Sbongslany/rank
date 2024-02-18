import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class RankAuthUser {
  RankAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<RankAuthUser> rankAuthUserSubject =
    BehaviorSubject.seeded(RankAuthUser(loggedIn: false));
Stream<RankAuthUser> rankAuthUserStream() =>
    rankAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
