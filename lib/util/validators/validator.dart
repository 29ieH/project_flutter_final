class AppValidators {
  AppValidators._();

  static String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    return null;
  }

  static String? validateCofirmPassword(String? value, String psw) {
    if (value == null || value.isEmpty) {
      return 'Confirm password is required.';
    }
    if (value.trim() != psw.trim()) {
      return 'Password does not match.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    final phoneRegExp = RegExp(r'^d\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format';
    }
    return null;
  }
}
