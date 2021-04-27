import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/components/perfilList.dart';
import 'package:instagramclone/models/post_model.dart';
import 'package:instagramclone/screen/view_post.dart';

class PostInst extends StatelessWidget {
  // recibimos el arreglo del dato y lo construimos para todo el widget
  Post posteo;
  // int index;
  // PostInst(this.index);
  PostInst(this.posteo);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: decoracion(),
        child: Column(
          children: [
            _userPost(context),
          ],
        ),
      ),
    );
  }

  BoxDecoration decoracion() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    );
  }

  Widget _userPost(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          // ListTile es un widget que te brinda todo para armar un post bar
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: PerfilList().decoracionPerfil(),
              child: _itemPerfil(),
            ),
            title: Text(
              this.posteo.name,
              style: Theme.of(context).textTheme.headline2,
            ),
            subtitle: Text(
              this.posteo.hora,
              style: TextStyle(fontSize: 13),
            ),
            trailing: IconButton(
              icon: Icon(FontAwesomeIcons.ellipsisH),
              color: Theme.of(context).primaryColorDark,
              onPressed: () {},
            ),
          ),

          // imagen post
          // hacemos que al presionar la imagen mande a otra vista
          // cambiamos a steful porque mandara parametros
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ViewPost(
                    // le mandamos el arreglo del post
                    // ya que lo recibira en la otra vista
                    post: this.posteo,
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 10, right: 12, left: 12),
              width: double.infinity,
              height: 350,
              decoration: estiloImagen(),
            ),
          ),
          // Actions del post
          _reaccionPost(context),
        ],
      ),
    );
  }

  Widget _itemPerfil() {
    return CircleAvatar(
      child: ClipOval(
        child: Image.asset(
          this.posteo.perfilUrl,
          width: 48,
          height: 48,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  BoxDecoration estiloImagen() {
    return BoxDecoration(
      // color: Colors.red,
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 12),
          blurRadius: 12,
        )
      ],
      // insertamos la imagen
      image: DecorationImage(
        image: AssetImage(this.posteo.postUrl),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _reaccionPost(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Theme.of(context).primaryColorDark,
                ),
                iconSize: 25,
                onPressed: () {},
              ),
              Text(
                '2,315',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                width: 15,
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.commentDots,
                  color: Theme.of(context).primaryColorDark,
                ),
                iconSize: 25,
                // hacemos que direccione a otra vista una ves presionado
                // ponemos _  para no mandarle nada al construir
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // le mandamos el post con la posicion puesta
                      builder: (_) => ViewPost(
                        post: this.posteo,
                      ),
                    ),
                  );
                },
              ),
              Text(
                '178',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.bookmark,
              color: Theme.of(context).primaryColorDark,
            ),
            iconSize: 25,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
