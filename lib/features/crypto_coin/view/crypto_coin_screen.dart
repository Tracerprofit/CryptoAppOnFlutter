import 'package:flutter/material.dart';
import 'package:oz/repositories/crypto_coin/models/crypto_coin.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});
  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;
  String? image;
  double? price;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null){
      debugPrint('Вам нужно передать аргументы');
      return;
    }
    if (args is! CryptoCoin){
      debugPrint('Аргумент должен быть строкой');
      return;
    }
    coinName = args.name;
    image = args.imageUrl;
    price = args.priceInRUB;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
        centerTitle: true,
      ),
      body: (coinName == null)? const Center(child: CircularProgressIndicator(),):
      ListTile(
        leading: Image.network(
          image!,
          height: 250,
          width: 250,
        ),
        title: Text(
          coinName!,
        ),
        subtitle: Text(
          '$price RUB',
        ),
      ),
    );
  }
}