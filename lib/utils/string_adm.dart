class StringAdm {
  static bool validate(String email) {
    Pattern pattern = r'[a-z0-9_.-]+@[a-z0-9]+\.[a-z]{2,}';
    RegExp regex = new RegExp(pattern);

    if (email.isEmpty) {
      return false;
    }
    if (!regex.hasMatch(email)) {
      return false;
    }
    return true;
  }
}
