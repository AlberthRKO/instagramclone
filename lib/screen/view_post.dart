import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/components/coment.dart';
import 'package:instagramclone/components/perfilList.dart';
import 'package:instagramclone/components/view.dart';
import 'package:instagramclone/models/comment_model.dart';
import 'package:instagramclone/models/post_model.dart';

class ViewPost extends StatelessWidget {
  // hacemos que reciba un arrray del post
  final Post post;

  // lo construimos
  ViewPost({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            View(this.post),
            SizedBox(
              height: 10,
            ),
            _commets(context),
          ],
        ),
      ),
      bottomNavigationBar: _inputComment(context),
    );
  }

  Widget _commets(context) {
    return Container(
      width: double.infinity,
      decoration: decoracion(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: comments.length,
          itemBuilder: (context, index) => Comentario(comments[index]),
        ),
      ),
    );
  }

  BoxDecoration decoracion() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    );
  }

  Transform _inputComment(context) {
    // transladamos el input a un campo segun el tamaño del dispositivo
    return Transform.translate(
      offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 80,
        decoration: decoracion2(),
        // detalles del textfield
        child: Padding(
          // padding a todo el input
          padding: const EdgeInsets.all(12),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                contentPadding: EdgeInsets.all(20),
                hintText: 'Agrega un comentario',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                prefixIcon: Container(
                  margin: EdgeInsets.all(4),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: _iconComment(),
                ),
                // Icono al lado derecho del input
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 4),
                  width: 70,
                  child: FlatButton(
                    // creamos un rectangulo circulo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.paperPlane,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }

  Widget _iconComment() {
    return CircleAvatar(
      child: ClipOval(
        child: Image.asset(
          this.post.perfilUrl,
          width: 48,
          height: 48,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  BoxDecoration decoracion2() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, -2),
          blurRadius: 6,
        )
      ],
    );
  }
}
