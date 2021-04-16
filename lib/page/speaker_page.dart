import 'package:flutter/material.dart';
import 'package:flutteristas_conference/data/speaker.dart';

class SpeakerPage extends StatefulWidget {
  @override
  _SpeakerPageState createState() => _SpeakerPageState();
}

class _SpeakerPageState extends State<SpeakerPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: speakers.length,
          itemBuilder: (context, index) {
            return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      speakers[index].speakerImage,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        child: Text(
                          speakers[index].speakerName,
                          style: TextStyle(
                              color: Color(0xffC1BBD7),
                              fontSize: 17,
                              background: Paint()
                                ..strokeWidth = 20
                                ..color = Color(0xff383A90)
                                ..style = PaintingStyle.stroke),
                        ),
                        padding: const EdgeInsets.all(4.0),
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
