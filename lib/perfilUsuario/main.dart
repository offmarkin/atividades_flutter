import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaPerfil(),
    );
  }
}

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto de perfil centralizada
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/images/palmas.png',
                ),
              ),
              const SizedBox(height: 16),

              // Nome do usuário em destaque
              const Text(
                'Joao "Palmas" Pedro ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Informações de contato
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    'palmelin0@email.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    '(62) 96769-6769',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Botão Seguir
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Você agora segue este perfil!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  'Seguir',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}