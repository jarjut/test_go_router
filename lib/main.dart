import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_go_router/page1.dart';
import 'package:test_go_router/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/page1',
      builder: (context, state) => const Page1Screen(),
    ),
    GoRoute(
      path: '/page2',
      builder: (context, state) => const Page2Screen(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Go Router Go'),
            onTap: () => GoRouter.of(context).go('/page1'),
          ),
          ListTile(
            title: const Text('Go Router Replace'),
            onTap: () => GoRouter.of(context).replace('/page1'),
          ),
          ListTile(
            title: const Text('Go Router Push'),
            onTap: () => GoRouter.of(context).push('/page1'),
          ),
          ListTile(
            title: const Text('Material Page Route Push'),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Page1Screen())),
          ),
        ],
      ),
    );
  }
}
