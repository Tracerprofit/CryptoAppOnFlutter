import 'package:oz/features/crypto_coin/crypto_coin.dart';
import 'package:oz/features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => const CryptoList(),
  '/coin': (context) => const CryptoCoinScreen(),
};