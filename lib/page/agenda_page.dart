import 'package:flutter/material.dart';
import 'package:flutteristas_conference/data/agenda.dart';
import 'package:flutteristas_conference/utils/flutteristas.dart';

class AgendaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: agendas.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              color: Color(0xff383A90).withOpacity(0.5),
              elevation: 0.0,
              child: Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(Flutteristas.flutteristas_logo),
                    backgroundColor: Colors.white,
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              agendas[index].agendaTitle,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            SizedBox(height: 16),
                            Text(
                              agendas[index].speakerName,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              agendas[index].speakerDesc,
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic),
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(children: <Widget>[
                          Icon(
                            Icons.alarm,
                            size: 17,
                          ),
                          Text(
                            agendas[index].agendaStartTime,
                            style: TextStyle(fontSize: 12),
                          )
                        ]),
                        SizedBox(height: 14),
                        Row(children: <Widget>[
                          Icon(
                            Icons.hourglass_top_outlined,
                            size: 17,
                          ),
                          Text(
                            agendas[index].agendaTotalTime,
                            style: TextStyle(fontSize: 12),
                          )
                        ])
                      ],
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
