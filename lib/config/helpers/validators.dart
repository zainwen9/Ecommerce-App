// Validate Email
String? validateEmail(String? email) {
  RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
  final isEmailValid = emailRegex.hasMatch(email ?? '');
  if (!isEmailValid) {
    return 'Please enter a valid email';
  }
  return null;
}

// Validate Password
String? validatePassword(String? password) {
  if (password == null) {
    return 'Please type a password';
  }
  if (password.length < 6) {
    return 'Your password should at least be 6 characters';
  }
  return null;
}

// Validate Name
String? validateName(String? name) {
  final nameRegex = RegExp(r'^[a-zA-Z\s]{1,50}$');
  if (name == null) {
    return 'Name cannot be null';
  } else if (name.isEmpty) {
    return 'Name should be at least 3 characters';
  } else if (!nameRegex.hasMatch(name)) {
    return 'Please enter a valid name';
  } else {
    return null;
  }
}

// Validate Username
String? validateUsername(String? username) {
  if (username == null) {
    return 'Username cannot be null';
  }

  // Allow alphanumeric characters and underscores.
  RegExp usernamePattern = RegExp(r'^[a-zA-Z0-9_]+$');

  if (!usernamePattern.hasMatch(username)) {
    return 'username can only contain letters, numbers and underscore';
  }

  if (username.length < 3 || username.length > 30) {
    return 'username should be between 3 to 30 characters';
  }

  return null;
}
