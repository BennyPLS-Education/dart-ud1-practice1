import 'Vehicle.dart';

// Activity 3.2
//
// Els seus atributs són:
// - Matrícula
// - Marca
// - Model
// - Si està llogat o no (boolean)
// - A qui (DNI)
// - Quilometratge.
// - Per a la moto a més volem afegir la cilindrada.
//
// Per defecte llogat estarà a false i el quilometratge a 0.
//
// Els constructors que s'implementaran seran:
// * Un constructor per defecte sense atributs.
// * Un constructor amb la matrícula. La resta per defecte.
// * Un constructor amb tots els atributs.
//
// Els mètodes que s'implementaran seran:
// * Mètodes get de tots els atributs.
// * Mètodes set de tots els atributs.
// * Sobreescriu els mètodes toString.

/// Represents a specific `Vehicle` subclass called `Car`.
///
/// This class extends `Vehicle` and inherits all its properties.
/// It has three constructors: `Car`, `Car.basic`, and `Car.blank`.
/// It also overrides the `toString` method from its parent class, `Vehicle`.
class Car extends Vehicle {
  Car(String plate, String brand, String model, bool isRented, String rentedTo, int mileage)
      : super(plate, brand, model, isRented, rentedTo, mileage);

  /// Car Shorthand Constructor.
  /// All other properties of the class will be set to Default.
  ///
  /// NOTE : (Null, 0, Empty String, false).
  Car.basic(String plate) : super.basic(plate);

  /// Car Empty Constructor.
  /// All properties of the class will be set to Default.
  ///
  /// NOTE : (Null, 0, Empty String, false).
  Car.blank() : super.blank();

  /// toString method override.
  @override
  String toString() {
    return 'Car {\n'
        '\tplate: ${this.plate ?? 'Not Set'},\n'
        '\tbrand: ${this.brand ?? 'Not Set'},\n'
        '\tmodel: ${this.model ?? 'Not Set'},\n'
        '\tisRented: ${this.isRented},\n'
        '\trentedTo: ${this.rentedTo ?? 'Not Set'},\n'
        '\tmileage: ${this.mileage},\n'
        '}\n';
  }
}
