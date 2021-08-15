//Aqui definimos todas las rutas que va a tener la apps

//DEbemos exporta un Map que tiene la llave y la informacion de la ruta
import 'package:flutter/material.dart';

import 'package:chat/pages/chat_pages.dart';
import 'package:chat/pages/loading_page.dart';
import 'package:chat/pages/login_page.dart';
import 'package:chat/pages/register_page.dart';
import 'package:chat/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'chat': (_) => ChatPage(),
  'loading': (_) => LoadingPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'usuarios': (_) => UsuariosPage(),
};
