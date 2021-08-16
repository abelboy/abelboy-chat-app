import 'package:flutter/material.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:chat/models/usuario.dart';

class UsuariosPage extends StatefulWidget {
  @override
  _UsuariosPageState createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final usuario = [
    Usuario(
        online: true, email: 'abelboy@gmail.com', nombre: 'Abel ', uid: '1'),
    Usuario(
        online: false, email: 'adrit01@gmail.com', nombre: 'Adriana', uid: '2'),
    Usuario(
        online: true, email: 'carlos@gmail.com', nombre: 'Carlos', uid: '3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi nombre es:',
          style: TextStyle(color: Colors.black54),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app, color: Colors.black54),
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            color: Colors.amberAccent[900],
            margin: EdgeInsets.only(right: 10),
            // child: Icon(Icons.check_circle, color: Colors.blue[400]),
            child: Icon(Icons.offline_bolt, color: Colors.red),
          ),
        ],
      ),
      // body: Center(child: Text('UsuariosPage'))
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _cargarUsuarios,
        header: WaterDropHeader(
          complete: Icon(
            Icons.check,
            color: Colors.blue.shade400,
          ),
          waterDropColor: Colors.blue.shade400,
        ),
        child: _listViewUsuarios(),
      ),
    );
  }

  ListView _listViewUsuarios() {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) => _usuarioListTile(usuario[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: usuario.length);
  }

  ListTile _usuarioListTile(Usuario usuario) {
    return ListTile(
      title: Text(usuario.nombre),
      subtitle: Text(usuario.email,
          style: TextStyle(
              color: Colors.orange, fontSize: 12, fontWeight: FontWeight.w400)),
      leading: CircleAvatar(
          child: Text(usuario.nombre.substring(0, 2),
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.blue.shade300),
      trailing: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: usuario.online ? Colors.green[300] : Colors.red,
            borderRadius: BorderRadius.circular(100)),
      ),
    );
  }

  _cargarUsuarios() async {
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }
}
