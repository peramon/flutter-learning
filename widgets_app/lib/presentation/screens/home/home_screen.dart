import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter + Material 3')),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    // appMenuItems

    return ListView.builder(
      // padding: const EdgeInsets.all(8),
      itemCount: appMenuItems.length,
      itemBuilder: (context, int index) {
        final menuItems = appMenuItems[index];
        // return Text(menuItems.title);
        return _CustomListTitle(menuItems: menuItems);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({required this.menuItems});

  final MenuItems menuItems;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItems.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subTitle),
      onTap: () {
        // TODO Navegar a otras pantallas
      },
    );
  }
}
