import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  Widget myPhoto() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/personImage.jepg"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              print("rfhqrhfiu");
            }),
        title: Column(
          children: <Widget>[
            Text(
              "Gallery",
              style: TextStyle(
                  color: Color.fromRGBO(50, 59, 69, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto_slab"),
            ),
            GestureDetector(
              onTap: () {
                print("rbgkrekhjhe");
              },
              child: Text(
                "Add Location ...",
                style: TextStyle(
                    color: Color.fromRGBO(250, 42, 0, 1),
                    fontSize: 12,
                    fontFamily: "Roboto_slab"),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                print("this is the post button");
              },
              child: Text(
                "Post",
                style: TextStyle(
                    color: Color.fromRGBO(250, 42, 0, 1),
                    fontSize: 16,
                    fontFamily: "Roboto_slab",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white,
          ),
          child: StaggeredGridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            staggeredTiles: [
              StaggeredTile.count(4, 2),
              StaggeredTile.count(4, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
            ],
            children: <Widget>[
              myPhotoList(
                  "https://images.unsplash.com/photo-1542998967-692be9110b46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              captionText("Type Here"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1550496913-b1a19c3779e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1525344387229-da3782d11618?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1531496074234-6db4f0226092?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1522865080725-2a9ea1fcb94e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1522865080725-2a9ea1fcb94e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1550496913-b1a19c3779e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1550496913-b1a19c3779e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1542998967-692be9110b46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://i.pinimg.com/474x/07/31/a0/0731a0dffabc3c46ebe1a062193b1d9b--popular-pins.jpg?b=t"),
              myPhotoList(
                  "https://i.pinimg.com/474x/55/2b/e9/552be9333fcf279a938818e05a2fd2f7.jpg"),
              myPhotoList(
                  "https://i.pinimg.com/474x/86/ea/f2/86eaf2a01b801f8384ab06fbee8128b6.jpg?b=t"),
              myPhotoList(
                  "https://i.pinimg.com/474x/a7/45/93/a74593d79309a0fccca299c8984180bb.jpg"),
              myPhotoList(
                  "https://i.pinimg.com/474x/ce/42/cd/ce42cda66d888b87dcdc9743f11049b0.jpg?b=t"),
              myPhotoList(
                  "https://i.pinimg.com/474x/55/2b/e9/552be9333fcf279a938818e05a2fd2f7.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget captionText(String titleText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  titleText,
                  style: TextStyle(
                      color: Color.fromRGBO(168, 182, 200, 1), fontSize: 12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myPhotoList(String MyImages) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(MyImages),
        ),
      ),
    );
  }
}
