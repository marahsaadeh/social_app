import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/shared/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          widthScreen > 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.messenger_outline,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                    )),
              ],
              backgroundColor: mobileBackgroundColor,
              title: SvgPicture.asset(
                "assets/img/instagram.svg",
                color: primaryColor,
                height: 32,
              ),
            ),
      body: Container(
        decoration: BoxDecoration(
            color: mobileBackgroundColor,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(125, 78, 91, 110),
                        ),
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/1200x/f6/ea/9f/f6ea9fb2aaa0ed800afdca678611882d.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
    
                        "Marah Saadeh",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Image.network(
              // widget.snap["postUrl"],
              "https://i.pinimg.com/736x/f6/73/fa/f673fa7ac69952451af274bc78aef1ae.jpg",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_outline),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                width: double.infinity,
                child: Text(
                  "10 Likes",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                )),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Text(
                  "User Name ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                ),
                Text(
                  "  ♥  ♥  ♥  ♥",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.fromLTRB(10, 13, 9, 10),
                  width: double.infinity,
                  child: Text(
                    "view all 100 comments",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(214, 157, 157, 165)),
                    textAlign: TextAlign.start,
                  )),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 9, 10),
                width: double.infinity,
                child: Text(
                  "10June 2025",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      ),
    );
  }
}