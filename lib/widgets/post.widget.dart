import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: size.height * .70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTopWidgets(),
          buildContent(),
          const SizedBox(height: 10),
          buildBottomWidgets(),
        ],
      ),
    );
  }

  Widget buildTopWidgets() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/mandalorian.png'),
            radius: 20,
          ),
          SizedBox(width: 5),
          Text(
            'Mandalorian',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert_rounded,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget buildContent() {
    return Expanded(
      child: Image.asset(
        'assets/images/feed.jpg',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget buildBottomWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: const [
              Icon(
                Icons.favorite_border,
                size: 30,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.mode_comment_outlined,
                size: 30,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.send_outlined,
                size: 30,
              ),
              Spacer(),
              Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '500 likes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'baby_yoda',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' Deixe um comentário')
                ],
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          buildAddComent(),
        ],
      ),
    );
  }

  Widget buildAddComent() {
    return Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/baby-yoda.jpg'),
          radius: 10,
        ),
        SizedBox(width: 10),
        Text(
          'Add a comment...',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Spacer(),
        Text('')
      ],
    );
  }
}
