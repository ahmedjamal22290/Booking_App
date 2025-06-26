import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServicce {
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  Future<AuthResponse> logInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return await _supabaseClient.auth.signInWithPassword(
      password: password,
      email: email,
    );
  }

  Future<AuthResponse> registerWithEmailPassword({
    required String email,
    required String fName,
    required String lName,
    required String password,
  }) async {
    return await _supabaseClient.auth.signUp(
      password: password,
      email: email,
      data: {'first_name': fName, 'last_name': lName},
    );
  }

  Future<void> signOut() async {
    await _supabaseClient.auth.signOut();
  }

  Map<String, String> getUserData() {
    Map<String, String> data;
    final user = _supabaseClient.auth.currentSession?.user;
    final firstName = user?.userMetadata?['first_name'];
    final lastName = user?.userMetadata?['last_name'];
    data = {
      'first_Name': firstName ?? "null",
      'last_Name': lastName ?? "null",
      'email': user!.email!,
      'last_sign': user.lastSignInAt!,
      'created_at': user.createdAt,
    };
    return data;
  }

  String? getCurrentUserEmail() {
    final session = _supabaseClient.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}
