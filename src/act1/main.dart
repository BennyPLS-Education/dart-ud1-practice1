void main() {
  getFormattedHour(14, 30, 0);
}

void getFormattedHour(int hour, int minute, int second) {
  if (notInRange(hour, 0, 24)) {
    throw ArgumentError('Invalid Hour');
  }

  if (notInRange(minute, 0, 60)) {
    throw ArgumentError('Invalid Minute');
  }

  if (notInRange(second, 0, 60)) {
    throw ArgumentError('Invalid Second');
  }

  print('${format(hour)}:${format(minute)}:${format(second)}');
}

bool notInRange(int value, int min, int max) => (value < min || value > max);

String format(int value) => value.toString().padLeft(2, '0');
