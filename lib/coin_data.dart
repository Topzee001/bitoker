//TODO: Add your imports here.
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData() async {
    //Future<double> fetchEthToEurRate() async {
      final response = await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=7E2ED189-B0B8-4AA6-BDD5-DF8A0402ADEE'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final rate = data['rate'] as double;
        print(rate);
        //return rate;
      } else {
        throw Exception('Failed to load exchange rate');
      }
    }
  }

