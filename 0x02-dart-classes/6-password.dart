class Password {
  String? _password;

  Password({String? password}) {
    _password = password;
  }

  String? get password => _password;

  set password(String? value) {
    _password = value;
  }

  bool isValid() {
    if (_password == null) return false;
    final pass = _password!;
    return pass.length >= 8 && pass.length <= 16 && pass.contains(RegExp(r'[A-Z]')) && pass.contains(RegExp(r'[a-z]')) && pass.contains(RegExp(r'[0-9]'));
  }

  @override
  String toString() {
    return 'Your Password is: ${_password ?? "No password set"}';
  }
}
