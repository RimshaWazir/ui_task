class Validator {
  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String password) {
    // Check if password length is at least 8 characters
    if (password.length < 8) {
      return false;
    }

    // Check if password contains at least one uppercase letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    // Check if password contains at least one lowercase letter
    if (!password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    // Check if password contains at least one digit
    if (!password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    // Check if password contains at least one special character
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return false;
    }

    return true;
  }
}
