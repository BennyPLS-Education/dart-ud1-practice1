import 'Client.dart';

// Activity 3.3
//
// Com veiem, en principi, les classes anteriors no són pare-fill
// i tampoc guarden cap relació malgrat tenen en comú uns quants
// atributs. Seguidament, volem implementar un mètode llogar,
// retornar, compareTo i una funció estaLlogat. Per fer-ho,
// tindria més sentit tal vegada crear una classe abstracta amb
// les característiques comunes. Per això es proposa declarar una
// classe abstracta “Vehicle”.
//
// Mètodes a implementar:
// * llogat(): canvia l'atribut lliurat a true.
// * retornar(): canvia l'atribut lliurat a false.
// * estaLlogat(): retorna l'estat de l'atribut lliurat.
// * Mètode compareTo (Object a): compara el quilometratge de dos vehicles,
// però ALERTA, per que el mètode comparTO només hauria de ser capaç de
// comparar el quilometratge en el cas que els vehicles siguin de la mateixa
// subclasse (dos cotxes, o dues motos). Per exemple pots emprar l'ús dels
// càsting d'objectes.

/// Represents a vehicle. It is an abstract class and can't be instantiated directly.
/// Instead, vehicle types should inherit from this class.
abstract class Vehicle {
  String? _plate;
  String? _brand;
  String? _model;
  bool _isRented = false;
  String? _rentedTo;
  int _mileage = 0;

  Vehicle(this._plate, this._brand, this._model, this._isRented, this._rentedTo, this._mileage);

  /// Vehicle Shorthand Constructor.
  /// All other properties of the class will be set to Default.
  ///
  /// NOTE : (Null, 0, Empty String, false).
  Vehicle.basic(this._plate);

  /// Vehicle Empty Constructor.
  /// All properties of the class will be set to Default.
  ///
  /// NOTE : (Null, 0, Empty String, false).
  Vehicle.blank();

  /// Get Vehicle plate.
  String? get plate => _plate;

  /// Get Vehicle brand.
  String? get brand => _brand;

  /// Get Vehicle model.
  String? get model => _model;

  /// Get Vehicle isRented.
  bool get isRented => _isRented;

  /// Get Vehicle rentedTo.
  String? get rentedTo => _rentedTo;

  /// Get Vehicle mileage.
  int get mileage => _mileage;

  /// Set Vehicle plate.
  set plate(String? plate) => _plate = plate;

  /// Set Vehicle brand.
  set brand(String? brand) => _brand = brand;

  /// Set Vehicle model.
  set model(String? model) => _model = model;

  /// Set Vehicle isRented.
  set isRented(bool isRented) => _isRented = isRented;

  /// Set Vehicle rentedTo.
  set rentedTo(String? rentedTo) => _rentedTo = rentedTo;

  /// Set Vehicle mileage.
  set mileage(int mileage) => _mileage = mileage;

  /// Vehicle toString method.
  @override
  String toString() {
    return 'Vehicle {\n'
        '\t_plate: ${_plate ?? 'Not Set'},\n'
        '\t_brand: ${_brand ?? 'Not Set'},\n'
        '\t_model: ${_model ?? 'Not Set'},\n'
        '\t_isRented: ${_isRented},\n'
        '\t_rentedTo: ${_rentedTo ?? 'Not Set'},\n'
        '\t_mileage: ${_mileage},\n'
        '}\n';
  }

  /// Vehicle rent method.
  void rent(Client client) {
    if (_isRented) {
      throw Exception('The vehicle is already rented');
    }

    _isRented = true;
    _rentedTo = client.dni;
  }

  /// Vehicle return method.
  void returnVehicle() {
    if (!_isRented) {
      throw Exception('The vehicle is not rented');
    }

    _isRented = false;
    _rentedTo = null;
  }

  /// Vehicle compareTo method.
  ///
  /// NOTE: This method will only compare the mileage of two vehicles
  /// if they are of the same subclass (two cars, or two motorbikes).
  int compareTo(Object a) {
    if (this.runtimeType == a.runtimeType) {
      return this.mileage.compareTo((a as Vehicle).mileage);
    } else {
      throw Exception('The objects are not of the same type');
    }
  }
}
