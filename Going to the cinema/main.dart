import 'dart:math';

int systemA(int ticketPrice, int n) {
  // print('systemA: ${ticketPrice * n}');
  return ticketPrice * n;
}

int systemB(int cardPrice, int ticketPrice, double dc, int n) {
  var initPrice = cardPrice + ticketPrice * pow(dc, 1);
  var price = initPrice;
  for (var i = 2; i <= n; i++) {
    price += ticketPrice * pow(dc, i);
  }
  // print('systemB: ${price.ceil()}');
  return price.ceil();
}

int movie(int cardPrice, int ticketPrice, double dc) {
  int count = 0;
  do {
    count += 1;
    // print(count);
  } while (systemB(cardPrice, ticketPrice, dc, count) >=
      systemA(ticketPrice, count));
  return count;
}

main() {
  print(movie(500, 15, 0.90));
}
