import 'package:flutter/material.dart';
import 'package:testing_aplication/core.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

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
      "photo": "assets/icon/money1.png",
      "name": "Naira",
      "dete": "May 14 2024 Sun",
      "money": "N 2000"
    },
    {
      "id": 2,
      "photo": "assets/icon/money2.png",
      "name": "Pounds",
      "dete": "May 26 2024 Mon",
      "money": "\$3000"
    },
    {
      "id": 3,
      "photo": "assets/icon/money1.png",
      "name": "Euro",
      "dete": "May 14 2024 Sun",
      "money": "N 2000"
    },
    {
      "id": 4,
      "photo": "assets/icon/money2.png",
      "name": "Dollar",
      "dete": "May 26 2024 Monn",
      "money": "\$ 2000"
    }
  ];
}
