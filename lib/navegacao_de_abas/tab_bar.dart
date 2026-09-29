import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo com Telas Completas'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Carro',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Trânsito',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'Bike',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CarroScreen(),
            TransitoScreen(),
            BikeScreen(),
          ],
        ),
      ),
    );
  }
} // Chave de fechamento da classe TabBarDemo

class CarroScreen extends StatelessWidget {
  const CarroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.directions_car, size: 80, color: Colors.blue),
          SizedBox(height: 20),
          Text(
            'Conteúdo da tela de Carros',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class TransitoScreen extends StatelessWidget {
  const TransitoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.directions_transit, size: 80, color: Colors.orange),
          SizedBox(height: 20),
          Text(
            'Conteúdo da tela de Transito',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class BikeScreen extends StatelessWidget {
  const BikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.directions_bike, size: 80, color: Colors.green),
          SizedBox(height: 20),
          Text(
            'Conteúdo da tela de Bike',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}