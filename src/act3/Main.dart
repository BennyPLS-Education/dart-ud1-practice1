import 'Car.dart';
import 'Client.dart';
import 'Motorbike.dart';
import 'Vehicle.dart';

/// Un cop implementats els anteriors mètodes, tal com es proposa a l’enunciat,
/// crea una aplicació executable i realitza el següent:
/// - Crea dues llistes, una de cotxes i un altre de motos, de 5 posicions cadascun.
/// - Mitjançant l’ús dels diferents constructors, crea i inicialitza 5 cotxes i 5 motos i posa’ls dins de cada llista pertinent.
/// - Crea un o varis clients per a que “lloguin” uns vehicles.
/// - Realitza el “lliurament” d’alguns cotxes i motos amb el mètode llogar() als clients creats.
/// - Compta quants cotxes i motos hi llogats i digues quants n’hi ha en total.
/// - Finalment, indica el cotxe que té més quilòmetres i la moto amb més quilòmetres.
/// - Mostra'ls per pantalla amb tota la seva informació (fés servir el mètode toString ()).

void main() {
  List<Car> carList = [
    Car('1234ABC', 'Audi', 'A4', false, '', 100),
    Car('3456CDE', 'BMW', 'Serie 3', false, '', 6969),
    Car.basic('2345BCD'),
    Car.basic('4567DEF'),
    Car.blank(),
  ];

  List<Motorbike> motorbikeList = [
    Motorbike('6789FGH', 'Yamaha', 'R1', false, '', 100, 1000),
    Motorbike('8901HIJ', 'Honda', 'CBR', false, '', 6969, 600),
    Motorbike.basic('7890GHI'),
    Motorbike.basic('9012IJK'),
    Motorbike.blank(),
  ];

  List<Client> clientList = [
    Client('12345678A', 'John', 'Doe', 'johndoe@gmail.com', '123456789', '1234ABC'),
    Client('23456789B', 'Jane', 'Doe', 'janedoe@gmail.com', '987654321', '3456CDE'),
    Client('34567890C', 'John', 'Smith', 'johnsmith@gmail.com', '123456789', '6789FGH')
  ];

  carList[0].rent(clientList[0]);
  carList[1].rent(clientList[1]);
  motorbikeList[0].rent(clientList[2]);

  var rentedCarsCount = countRented(carList);
  var rentedMotorbikesCount = countRented(motorbikeList);

  print('De ${carList.length} cotxes, ${rentedCarsCount} estan llogats.');
  print('De ${motorbikeList.length} motos, ${rentedMotorbikesCount} estan llogades.');
  print('En total, ${rentedCarsCount + rentedMotorbikesCount} vehicles estan llogats.');

  print('El cotxe amb més quilòmetres és ${mostMileage(carList)}');
  print('La moto amb més quilòmetres és ${mostMileage(motorbikeList)}');
}

int countRented(List<Vehicle> vehicles) => vehicles.where((vehicle) => vehicle.isRented).length;

Vehicle mostMileage(List<Vehicle> vehicles) {
  vehicles.sort((a, b) => b.mileage.compareTo(a.mileage));
  return vehicles.first;
}
