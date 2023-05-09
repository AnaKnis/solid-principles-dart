abstract class Bird {
  void peck();
}

abstract class FlyingBird extends Bird {
  void fly();
}

class Falcon extends FlyingBird {
  @override
  void peck() {
    print('I am a Falcon, I can peck');
  }

  @override
  void fly() {
    print('I am a Falcon, I can fly');
  }
}

class Penguin extends Bird {
  @override
  void peck() {
    print('I am a Penguin, I can peck');
  }
}

void main() {
  final falcon = Falcon();
  final penguin = Penguin();

  falcon.peck();
  falcon.fly();

  penguin.peck();
}
