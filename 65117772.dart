class Person {
  String name;
  Person(this.name);
}

class Engine {
  String model;
  int speed;
  
  Engine(this.model, this.speed);
  
  void displayEngineInfo(){
  print ("Engine Model: $model, Speed: $speed km/h");
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  set brand(String brand) => _brand = brand;
  String get brand => _brand;

  set model(String model) => _model = model;
  String get model => _model;

  set owner(Person owner) => _owner = owner;
  Person get owner => _owner;

  set engine(Engine engine) => _engine = engine;
  Engine get engine => _engine;

  void displayCarInfo() {
    print("Car Info");
    print("Brand $_brand");
    print("Model: $_model");
    print("Owner: ${_owner.name}");
    _engine.displayEngineInfo();
  }

  void run() {
    print("Running at ${_engine.speed} km/h");
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  set color(String color) => _color = color;
  String get color => _color;

  void run() {
    print("Running at 120 km/h");
  }
  
  void displayCarInfo(){
    print ("CarInfo");
    print ("Brand: $brand");
    print ("Model: $model");
    print (" Color: $_color");
    print (" Owner: ${_owner.name}");
    _engine.displayEngineInfo();
  }
}

void main() {
  var owner = Person("Korrapat");
  var engine = Engine("V8", 350);
  var honda = Honda("Honda", "Wave", owner, engine, "Red");
  var car = Car("Mazda", "Rx7", owner, engine);

  honda.color = "Purple";
  
  car.displayCarInfo();
  car.run();
  
  print("---------------------------");
    
  honda.displayCarInfo();
  honda.run();
}
