mixin Battery {
    int energy = 100;

    void useEnergy(int amount) {
        if (amount <= 0) {
            print("Пишите правильно");
            return;
        }
        if (amount > energy) {
            print("Недостаточно заряда");
            return;
        }
        energy -= amount;
        print('Осталось: $energy%');
    }

    void charge() {
        energy = 100; 
        print('Батарея заряжена');
    }
}

class Robot with Battery {}

void main() {
    Robot robocop = Robot();
    robocop.useEnergy(30);
    robocop.useEnergy(60);
    robocop.charge();
    print(robocop.energy);
}