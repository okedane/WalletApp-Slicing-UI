import 'package:flutter/material.dart';
import 'package:testing_aplication/core.dart';

class TransferController extends State<TransferView> {
  static late TransferController instance;
  late TransferView view;

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
