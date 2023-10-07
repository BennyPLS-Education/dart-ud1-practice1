// Activity 3.1
//
// Pel que fa als client, sòls ens interessa tenir la seva fitxa, amb totes
// les seves dades i un mètode de pagament.
//
// Els seus atributs són:
// - DNI
// - Nom complet
// - Correu electrònic
// - Telèfon
// - Nº targeta de crèdit
//
// DNI convindria que sigui una variable privada.
//
// Els constructors que s'implementaran seran:
// * Un constructor amb el DNI i nom. La resta per defecte (null o buit com volgueu).
// * Un constructor amb tots els atributs.
//
// Els mètodes que s'implementaran seran:
// * Mètodes get de tots els atributs
// * Mètodes set de tots els atributs.
// * Sobreescriu el mètode toString.

/// A class representing a Client.
///
/// This is a basic dataclass containing the information of a Client.
/// That information is mutable and can be changed at any time with setters.
class Client {
  /// A unique identifier for the client.
  String _dni;

  /// The client's full name.
  String _name;

  /// The client's full surname.
  String _surname = '';

  /// The client's email address.
  String _email = '';

  /// The client's phone number.
  String _phone = '';

  /// The client's credit card number.
  String _cardNumber = '';

  Client(this._dni, this._name, this._surname, this._email, this._phone, this._cardNumber);

  /// Client Shorthand Constructor.
  /// All other properties of the class will be set to Empty String.
  Client.short(this._dni, this._name);

  /// Get Client unique identifier.
  String get dni => _dni;

  /// Get Client full name.
  String get name => _name;

  /// Get Client full surname.
  String get surname => _surname;

  /// Get Client email address.
  String get email => _email;

  /// Get Client phone number.
  String get phone => _phone;

  /// Get Client credit card number.
  String get cardNumber => _cardNumber;

  /// Set Client unique identifier.
  set dni(String dni) => _dni = dni;

  /// Set Client full name.
  set name(String nom) => _name = nom;

  /// Set Client full surname.
  set surname(String cognom) => _surname = cognom;

  /// Set Client email address.
  set email(String correu) => _email = correu;

  /// Set Client phone number.
  set phone(String telefon) => _phone = telefon;

  /// Set Client credit card number.
  set cardNumber(String targeta) => _cardNumber = targeta;

  @override
  String toString() {
    return 'Client{\n'
        '\tDNI: $_dni\n'
        '\tNom: $_name\n'
        '\tCognom: $_surname\n'
        '\tCorreu: $_email\n'
        '\tTelefon: $_phone\n'
        '\tTargeta: $_cardNumber\n'
        '}';
  }
}
