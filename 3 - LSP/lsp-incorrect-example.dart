abstract class Bird {
  void peck();
  void fly();
}

class Falcon extends Bird {
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

  @override
  void fly() {
    throw Exception('I am a Penguin, I cannot fly');
  }
}

void main() {
  final falcon = Falcon();
  final penguin = Penguin();

  falcon.peck();
  falcon.fly();

  penguin.peck();
  //throw an exception
  penguin.fly();
}
