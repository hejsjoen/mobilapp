class Currencies {
  String name;
  String shortName;
  String iconPath;
  double exchangeRate;

  Currencies({
    required this.name,
    required this.shortName,
    required this.iconPath,
    required this.exchangeRate,
  });

  static List<Currencies> getCurrencies() {
    List<Currencies> currencies = [];

    currencies.add(
      Currencies(
        name: 'Svenska Krona',
        shortName: 'SEK',
        iconPath: 'icons/swe.svg',
        exchangeRate: 100.00,
      ),
    );

    currencies.add(
      Currencies(
        name: 'Amerikanska Dollar',
        shortName: 'USD',
        iconPath: 'icons/usa.svg',
        exchangeRate: 957.12,
      ),
    );

    currencies.add(
      Currencies(
        name: 'Dansk Krona',
        shortName: 'DKK',
        iconPath: 'icons/dkk.svg',
        exchangeRate: 147.63,
      ),
    );

    currencies.add(
      Currencies(
        name: 'Euro',
        shortName: 'EUR',
        iconPath: 'icons/euro.svg',
        exchangeRate: 1102.60,
      ),
    );

    currencies.add(
      Currencies(
        name: 'Norsk Krona',
        shortName: 'NOK',
        iconPath: 'icons/nkk.svg',
        exchangeRate: 93.49,
      ),
    );

    return currencies;
  }
}
