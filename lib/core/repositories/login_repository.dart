abstract class LoginRepository {
  Future<dynamic> login(String username, String password);

  Future<dynamic> register(
    String name,
    String mobile,
    String email,
    String password,
    String passwordConfirm,
  );

  Future<dynamic> registerVerify(
    String otp,
    String token,
  );
}
