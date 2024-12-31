import 'package:flutter/material.dart';
import 'package:testing_aplication/core.dart';

class WalletController extends State<WalletView> {
  static late WalletController instance;
  late WalletView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> wallets = [
    {
      "id": 1,
      "photo": "assets/image/1.png",
      "name": "Naira",
      "description": "Get Started",
    },
    {
      "id": 2,
      "photo": "assets/image/2.png",
      "name": "Pounds",
      "description": "Get Started",
    },
    {
      "id": 3,
      "photo": "assets/image/3.png",
      "name": "Euro",
      "description": "Get Started",
    },
    {
      "id": 4,
      "photo": "assets/image/4.png",
      "name": "Dollar",
      "description": "Get Started",
    }
  ];
}
