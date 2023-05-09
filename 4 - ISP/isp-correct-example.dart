abstract class Animal {
  void eat();
  void sleep();
  void move();
}

abstract class SoundMaker implements Animal {
  void makeSound();
}

abstract class Swimmer implements Animal {
  void swim();
}

class Dog implements SoundMaker {
  @override
  void eat() {
    // implementation for eating
  }

  @override
  void sleep() {
    // implementation for sleeping
  }

  @override
  void move() {
    // implementation for moving
  }

  @override
  void makeSound() {
    // implementation for
  }
}

class Fish implements Swimmer {
  @override
  void eat() {
    // implementation for eating
  }

  @override
  void sleep() {
    // implementation for sleeping
  }

  @override
  void move() {
    // implementation for swimming
  }

  @override
  void swim() {
    // implementation for swimming
  }
}

//another example of ISP using mixins
mixin Flyer {
  fly() => print('Flying');
}

class Duck extends Animal with Flyer {
  @override
  void eat() {
    //implement eat
  }

  @override
  void move() {
    //implement move
  }

  @override
  void sleep() {
    //implement sleep
  }
}

void main() {
  final dog = Dog();
  final fish = Fish();
  final duck = Duck();

  dog.makeSound();
  fish.swim();
  duck.fly();
}
