import 'package:flutter/material.dart';
import 'package:yts_movies_redux/models/movie.dart';

class MoviePage extends StatefulWidget {
  const MoviePage.headline({Key key, @required Movie movie}) :_movie = movie, super(key: key);

  final Movie _movie;

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._movie.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 1.33,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget._movie.largeCoverImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget._movie.title,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '${widget._movie.year}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white60,
                              ),
                            ),
                            SizedBox(width: 16,),
                            Text(
                              '${widget._movie.runtime} minutes',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '${widget._movie.rating} / 10',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Icon(Icons.star,color: Colors.amberAccent,)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Summary:',
                  style: TextStyle(
                      fontSize: 24, color: Colors.white70, letterSpacing: 1.2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '   ${widget._movie.summary}',
                style: const TextStyle(fontSize: 16, letterSpacing: 1.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
