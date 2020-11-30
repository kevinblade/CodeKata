import 'dart:math';

int movie(int cardPrice, int ticketPrice, double dc) {
  int count = 0;
  double priceB = 0.0;
  do {} while ((priceB += (++count == 1 ? cardPrice.toDouble() : 0) +
              ticketPrice * pow(dc, count))
          .ceil() >=
      (ticketPrice * count));
  return count;
}

main() {
  print(movie(500, 15, 0.9));
}
