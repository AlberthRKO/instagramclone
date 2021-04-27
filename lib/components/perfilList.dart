import 'package:flutter/material.dart';
import 'package:instagramclone/models/post_model.dart';

class PerfilList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        // indicamos la direccion del scroll
        scrollDirection: Axis.horizontal,
        // le mandamos el tamaño de la lista
        itemCount: perfiles.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) return SizedBox(width: 10);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60,
              height: 60,
              decoration: decoracionPerfil(),
              child: _itemPerfil(index),
            ),
          );
        },
      ),
    );
  }

  BoxDecoration decoracionPerfil() {
    return BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 2),
          blurRadius: 5,
        ),
      ],
    );
  }

  Widget _itemPerfil(index) {
    return CircleAvatar(
      child: ClipOval(
        child: Image.asset(
          perfiles[index - 1],
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
