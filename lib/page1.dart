import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_go_router/page2.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Go Router Go'),
            onTap: () => GoRouter.of(context).go('/page2'),
          ),
          ListTile(
            title: const Text('Go Router Replace'),
            onTap: () => GoRouter.of(context).replace('/page2'),
          ),
          ListTile(
            title: const Text('Go Router Push'),
            onTap: () => GoRouter.of(context).push('/page2'),
          ),
          ListTile(
            title: const Text('Material Page Route Push'),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Page2Screen())),
          ),
        ],
      ),
    );
  }
}
