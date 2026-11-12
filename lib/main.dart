// Práctica guiada pre-examen Unidad II — Cafetería UTEZ (solución).
// Único archivo que conoce la implementación concreta del repositorio.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'datos/memoria_pedido_repository.dart';
import 'datos/pedido_repository.dart';
import 'presentacion/pedidos_page.dart';
import 'presentacion/pedidos_view_model.dart';

void main() {
  runApp(CafeUtezApp(repositorio: MemoriaPedidoRepository()));
}

class CafeUtezApp extends StatelessWidget {
  const CafeUtezApp({super.key, required this.repositorio});

  final PedidoRepository repositorio;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PedidosViewModel(repositorio)..cargar(),
      child: MaterialApp(
        title: 'Cafetería UTEZ',
        theme: ThemeData(colorSchemeSeed: Colors.brown),
        home: const PedidosPage(),
      ),
    );
  }
}
