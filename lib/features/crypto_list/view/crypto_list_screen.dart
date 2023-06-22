import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:oz/features/crypto_list/widgets/widgets.dart';
import 'package:oz/repositories/crypto_coin/crypto_coin_repository.dart';
import 'package:oz/repositories/crypto_coin/models/crypto_coin.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({
    super.key,
  });

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {

  List<CryptoCoin>? _cryptoCoinList;

  @override
  void initState() {
    _loadCryptoCoin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 87, 34),
        title: const Text("Список криптовалют"),
        centerTitle: true,
      ),
      body: LiquidPullToRefresh(
        onRefresh: _loadCryptoCoin, child:
          (_cryptoCoinList == null)? const Center(child: CircularProgressIndicator(),):
          ListView.separated(
            padding: const EdgeInsets.only(top: 15),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: _cryptoCoinList!.length,
            itemBuilder: (context, i) {
              final coin = _cryptoCoinList![i];
              return CryptoCoinTile(coin: coin);
            },
          ),
      ),
    );
  }
  Future<void> _loadCryptoCoin() async {
    _cryptoCoinList = await CryptoCoinRepository().getCoinsList();
    // return await Future.delayed(const Duration(seconds: 1));
    setState(() {});
  }
}






