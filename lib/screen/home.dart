import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/components/perfilList.dart';
import 'package:instagramclone/components/post.dart';
import 'package:instagramclone/models/post_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: _customBar(context),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          PerfilList(),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: posts.length,
            itemBuilder: (context, index) => PostInst(posts[index]),
          ),
          // PostInst(0),
          // PostInst(1),
          // PostInst(0),
          // PostInst(1),
        ],
      ),
      bottomNavigationBar: _customBottom(context),
    );
  }

  AppBar _customBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Instagram',
        style: Theme.of(context).textTheme.headline1,
      ),
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 30),
        icon: Icon(FontAwesomeIcons.adjust),
        color: Theme.of(context).primaryColorDark,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 30),
          icon: Icon(FontAwesomeIcons.paperPlane),
          color: Theme.of(context).primaryColorDark,
          onPressed: () {},
        ),
      ],
    );
  }

  ClipRRect _customBottom(context) {
    // agremos radius a top asique recibimos Cliprrect en el widget
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        // backgroundColor: Theme.of(context).primaryColorDark,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.buffer,
              color: Theme.of(context).primaryColorDark,
              size: 25,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search,
              color: Colors.grey,
              size: 25,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 3,
                vertical: 10,
              ),
              child: FlatButton(
                padding: EdgeInsets.only(
                  top: 9,
                  bottom: 10,
                ),
                // creamos un rectangulo circulo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.heart,
              color: Colors.grey,
              size: 25,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Colors.grey,
              size: 25,
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }
}
