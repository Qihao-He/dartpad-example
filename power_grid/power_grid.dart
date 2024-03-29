void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();
  
  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];
  
  addPlant(PowerPlant plant) {
    bool confirmation = plant.turnOn('5 hours');
    connectedPlants.add(plant);
  }
}

abstract class building {
  int height;
}

abstract class PowerPlant {
  int costOfEnergy;
  bool turnOn(String duration);
}

class NuclearPlant implements PowerPlant, building{
  int costOfEnergy;
  int height = 100;
  bool turnOn(String duration) {
    print('I\'m a nuclear plant, turning on!');
    return true;
  }
  
  meltDown() {
    print('Blows Up!!!');
  }
}

class SolarPlant implements PowerPlant {
  int costOfEnergy;
  bool turnOn(String duration) {
    print('I\'m a Solar plant, turning on!');
    return false;
  }
}