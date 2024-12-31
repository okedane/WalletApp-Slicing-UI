import 'package:flutter/material.dart';
import 'package:testing_aplication/module/detail_dashboard/view/detail_dashboard_view.dart';


class DetailDashboardController extends State<DetailDashboardView> {
  static late DetailDashboardController instance;
  late DetailDashboardView view;

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
}
