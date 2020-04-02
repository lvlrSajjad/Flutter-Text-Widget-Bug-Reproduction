import 'package:flutter/material.dart';

class ChatMessageItem extends StatelessWidget {

  const ChatMessageItem(
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {


    var brightness = MediaQuery.of(context).platformBrightness;

    Color bodyColor = brightness == Brightness.dark ? Colors.grey.shade200 : Colors.grey.shade800;

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Card(
                      elevation: 4,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4),
                              bottomLeft: Radius.circular( 16),
                              bottomRight:
                                  Radius.circular( 4))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              child: Container(
                                constraints:
                                    BoxConstraints(minWidth: 100, maxWidth: 280),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4, right: 4),
                                  child: Text('آره من مذهبیم نخ خیلی خشک ولی خب معتقدم',
                                      maxLines: 100,
                                      style: TextStyle(
                                        fontSize: 18,
                                          color: Colors.black87)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

}
