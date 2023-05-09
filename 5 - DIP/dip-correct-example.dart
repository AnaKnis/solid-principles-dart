abstract class IUserRepository {
  User? getUserByEmail(String email);
}

class User {
  String name;
  String email;

  User(this.name, this.email);
}

class UserRepository implements IUserRepository {
  late List<User> users;

  UserRepository() {
    users = [
      User('John', 'john@example.com'),
      User('Mary', 'mary@example.com'),
      User('Peter', 'peter@example.com'),
    ];
  }

  @override
  User? getUserByEmail(String email) {
    for (var user in users) {
      if (user.email == email) {
        return user;
      }
    }
    return null;
  }
}

class UserController {
  IUserRepository userRepository;

  UserController(this.userRepository);

  void showUser(String email) {
    var user = userRepository.getUserByEmail(email);
    if (user != null) {
      print('Name: ${user.name}');
      print('Email: ${user.email}');
    } else {
      print('User not found');
    }
  }
}
