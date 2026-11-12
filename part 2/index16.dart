class Animal {
    void bred() {
        print('Дышу как живая');
    }
}

mixin Fly {
    void fly() {
        print('я умею летать');
    }
}

mixin Swim {
    void main() {
        print('я умею плавать');
    }
}

class Airpalne with Fly {}

class Drone with Fly {}

class Fish extends Animal with Swim {}

class Duck extends Animal with Fly, Swim {}

void main() {
    Airpalne airp = Airpalne();
    Drone dr = Drone();
    Fish fish = Fish();
    Duck duck = Duck();
    airp.fly();
    dr.fly();
    fish.swim();
    fish.bred();
    duck.bred();
    duck.fly();
    duck.swim();
}