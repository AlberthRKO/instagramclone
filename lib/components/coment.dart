import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/components/perfilList.dart';
import 'package:instagramclone/models/comment_model.dart';

class Comentario extends StatelessWidget {
  Comment comment;

  Comentario(this.comment);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: _comentario(context),
        ),
      ],
    );
  }

  Widget _comentarios(context) {
    return ListTile(
      leading: Container(
        width: 38,
        height: 38,
        decoration: PerfilList().decoracionPerfil(),
        child: _itemPerfil(),
      ),
      title: Text(
        this.comment.name,
        style: Theme.of(context).textTheme.headline2,
      ),
      subtitle: Text(
        this.comment.text,
        style: TextStyle(fontSize: 12),
      ),
    );
  }

  Widget _comentario(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
          width: 38,
          height: 38,
          decoration: PerfilList().decoracionPerfil(),
          child: _itemPerfil(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.comment.name,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              this.comment.text,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            _actions(context),
          ],
        )
      ],
    );
  }

  Widget _itemPerfil() {
    return CircleAvatar(
      child: ClipOval(
        child: Image.asset(
          this.comment.perfilUrl,
          width: 38,
          height: 38,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _actions(context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.heart,
          color: Colors.grey,
          size: 15,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          FontAwesomeIcons.reply,
          color: Colors.grey,
          size: 15,
        ),
      ],
    );
  }
}
