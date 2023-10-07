
void main() {
  var primeList = getPrimes(-1);

  primeList.forEach(print);

  getPairPrime(primeList);
}

void getPairPrime(List<int> primeList) {
  for (int i = 1; i < primeList.length; i++) {
    if (primeList[i] - 2 == primeList[i - 1]) {
      print('${primeList[i - 1]} i ${primeList[i]}');
    }
  }
}

List<int> getPrimes(int limit) {
  if (limit <= 2) {
    throw ArgumentError('Limit must be greater than 2');
  }

  List<bool> primes = List.filled(limit, true);
  primes[0] = primes[1] = false;

  for (int i = 2; i * i < limit; i++) {
    if (primes[i]) {
      for (int j = i * i; j < limit; j += i) {
        primes[j] = false;
      }
    }
  }

  List<int> primeNumbers = [];
  for (int i = 2; i < limit; i++) {
    if (primes[i]) {
      primeNumbers.add(i);
    }
  }

  return primeNumbers;
}
