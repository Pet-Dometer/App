import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user.dart';

final userDBProvider = Provider<UserDB>((ref) {
  return UserDB(ref);
});

final currentUserIDProvider = StateProvider<String>((ref) {
  return 'user-001';
});
