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

// This class represents a motorbike model.
///
/// It inherits from the `Vehicle` class and extends its functionality
/// by adding a `_cylinderCapacity` property specifically for motorbikes.
class Motorbike extends Vehicle {
  int? _cylinderCapacity;

  Motorbike(
      String plate, String brand, String model, bool isRented, String rentedTo, int mileage, this._cylinderCapacity)
      : super(plate, brand, model, isRented, rentedTo, mileage);

  /// Motorbike Shorthand Constructor.
  /// All other properties of the class will be set to Default
  ///
  /// NOTE : (Null, 0, Empty String, false).
  Motorbike.basic(String plate) : super.basic(plate);

  /// Motorbike Empty Constructor.
  /// All properties of the class will be set to Default.
  ///
  /// NOTE : (Null, 0, Empty String, false).
  Motorbike.blank() : super.blank();

  /// Get Motorbike cylinderCapacity.
  int? get cylinderCapacity => _cylinderCapacity;

  /// Set Motorbike cylinderCapacity.
  set cylinderCapacity(int? cylinderCapacity) => _cylinderCapacity = cylinderCapacity;

  /// toString method override.
  @override
  String toString() {
    return 'Motorbike {\n'
        '\tplate: ${this.plate ?? 'Not Set'},\n'
        '\tbrand: ${this.brand ?? 'Not Set'},\n'
        '\tmodel: ${this.model ?? 'Not Set'},\n'
        '\tisRented: ${this.isRented},\n'
        '\trentedTo: ${this.rentedTo ?? 'Not Set'},\n'
        '\tmileage: ${this.mileage},\n'
        '\tcylinderCapacity: ${this.cylinderCapacity ?? 'Not Set'}\n'
        '}\n';
  }
}
