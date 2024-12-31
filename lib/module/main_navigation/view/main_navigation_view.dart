import 'package:flutter/material.dart';
import 'package:testing_aplication/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({super.key});

  Widget build(context, MainNavigationController controller) {
    controller.view = this;
    // scaffold_butoon__Navigation
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            const TransferView(),
            const WalletView(),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          selectedItemColor: Colors.blue[300],
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.swap_horizontal_circle_outlined,
              ),
              label: "trasnsfer",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_outlined,
              ),
              label: "wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_search_outlined,
              ),
              label: "history",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
