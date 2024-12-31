import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing_aplication/core.dart';
import 'package:testing_aplication/core/widgets/container/total_balance.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.amber,
                        child: Image.asset(
                          "assets/icon/icon.png",
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Steve"),
                          Text(
                            "hope you're doing well",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.more_vert_outlined,
                    )
                  ],
                ),
                const SizedBox(
                  height: 17.0,
                ),
                const totalBalance(),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Complete Setup",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  "Add new wallet",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: const Color.fromARGB(186, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Add money to your wallet"),
                  ),
                ),
                const SizedBox(
                  height: 9.0,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: const BorderSide(width: 1.0, color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Set up a 2FA to secure your account"),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Recent Transaction",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.wallets[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: AssetImage(item["photo"])),
                      title: Text(item["name"]),
                      subtitle: Text(item["dete"]),
                      trailing: Text(item["money"]),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
