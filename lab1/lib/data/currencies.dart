class Currencies {
  var name;
  var iconPath;
  var exchangeRate;

  Currencies({
    required this.name,
    required this.iconPath,
    required this.exchangeRate
  });

  static List<Currencies> getCurrencies() {
    List<Currencies> currencies = [];

    currencies.add(
      Currencies(
        name: 'Svenska Krona', 
        iconPath: 'icons/swe.svg', 
        exchangeRate: 100
      )
    );

    currencies.add(
      Currencies(
        name: 'USD', 
        iconPath: 'icons/usa.svg', 
        exchangeRate: 957.12
      )  
    );

    currencies.add(
      Currencies(
        name: 'Dansk Krona', 
        iconPath: 'icons/dkk.svg', 
        exchangeRate: 147.63
      )
    );

    currencies.add(
      Currencies(
        name: 'Euro', 
        iconPath: 'icons/euro.svg', 
        exchangeRate: 1102.60
      )
    );

    currencies.add(
      Currencies(
        name: 'Norsk Krona', 
        iconPath: 'icons/nkk.svg',
        exchangeRate: 93.49
      )
    );

    return currencies;
  }
}