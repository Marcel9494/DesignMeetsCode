import 'package:flutter/material.dart';

class CardWithBorder extends StatelessWidget {
  const CardWithBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width - 16.0,
      child: Card(
        color: const Color(0x0fffffff),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
          ),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: Colors.cyanAccent, width: 6)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: Icon(Icons.code_rounded, color: Colors.cyanAccent),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Design meets code',
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () => {},
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'is for all people which will learn more about UI / UX Design, app- and webtechnologies like Flutter, Angular, React and more or search for inspiration.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey.shade400, height: 1.35),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 6.0),
                  child: Row(
                    children: const [
                      Chip(
                        avatar: Icon(Icons.brush_rounded, size: 16.0),
                        label: Text('Design'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Chip(
                          avatar: Icon(Icons.code_rounded, size: 16.0),
                          label: Text('Code'),
                        ),
                      ),
                      Chip(
                        avatar: Icon(Icons.widgets_rounded, size: 16.0),
                        label: Text('UI / UX'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
