abstract class Animal {
  void eat();
  void sleep();
  void move();
  void makeSound();
}

class Dog implements Animal {
  @override
  void eat() {
    //implementation for eating
  }

  @override
  void sleep() {
    //implementation for sleeping
  }

  @override
  void move() {
    //implementation for moving
  }

  @override
  void makeSound() {
    //implementation for barking
  }
}

class Fish implements Animal {
  @override
  void eat() {
    //implementation for eating
  }

  @override
  void sleep() {
    //implementation for sleeping
  }

  @override
  void move() {
    //implementation for swimming
  }

  @override
  void makeSound() {
    throw UnsupportedError("Fish don't make sounds");
  }
}

void main() {
  final dog = Dog();
  final fish = Fish();

  dog.makeSound();
  fish.makeSound(); // Throws UnsupportedError
}
