import 'package:flutter/material.dart';
import 'package:testing_aplication/core.dart';


class DetailDashboardView extends StatefulWidget {
  const DetailDashboardView({super.key});

  Widget build(context, DetailDashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Dashboard"),
        actions: const [],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  @override
  State<DetailDashboardView> createState() => DetailDashboardController();
}
