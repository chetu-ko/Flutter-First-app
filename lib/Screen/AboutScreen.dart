import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      child: SafeArea(
        child: Material(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: MySliverAppBar(expandedHeight: 200),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
                      child: Container(
                        height: 130,
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customHeader(
                                name: "About Me",
                                color: Colors.blue[300],
                                size: 20),
                            Text(
                              "Hi, I am flutter developer, started my flutter jounrey on feb 2021."
                              "I am skilled in handling firebase auth, Firebase firestore, Firebase dynamic link basics "
                              "and firebase storage. Experience of mobx and Bloc state management concepts."
                              "I am learner, very eager to learn the flutter and work on it...",
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    customHeader(
                        name: "Experience", color: Colors.blue[300], size: 20),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
                      child: Container(
                        child: Text(
                          "I have 1.6 years of experience in App developement."
                          " one year of experience in ionic at kratzen technologies, Hubballi and 6 months of"
                          " experience in flutter as developer at 91gamez, Banglore.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    customHeader(
                        name: "Skills", color: Colors.blue[300], size: 20),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: customHeader(
                          name: "Launguage", color: Colors.blue[500], size: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'Dart', value: 0.8, percentage: "80"),
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'Java   ', value: 0.6, percentage: '60'),
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'c       ', value: 0.8, percentage: "80"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'HTML   ', value: 0.8, percentage: '80'),
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'SQL ', value: 0.6, percentage: "60"),
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'PHP      ', value: 0.6, percentage: "60"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'CSS    ', value: 0.7, percentage: '70'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: customHeader(
                          name: "FrameWork", color: Colors.blue[500], size: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'Flutter', value: 0.9, percentage: '90'),
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'Ionic', value: 0.5, percentage: '50'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: customHeader(
                          name: "Database", color: Colors.blue[500], size: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'Firebase', value: 0.7, percentage: '70'),
                          SizedBox(
                            width: 10,
                          ),
                          customCircular(
                              name: 'SQL', value: 0.5, percentage: '50'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: customHeader(
                          name: "Tools", color: Colors.blue[500], size: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          cutomIcon(
                            FontAwesomeIcons.git,
                            iconName: "git",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          cutomIcon(FontAwesomeIcons.github,
                              iconName: "github"),
                          SizedBox(
                            width: 10,
                          ),
                          cutomIcon(FontAwesomeIcons.bitbucket,
                              iconName: "bitbucket"),
                          SizedBox(
                            width: 10,
                          ),
                          cutomIcon(FontAwesomeIcons.slack, iconName: "slack"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          cutomIcon(
                            FontAwesomeIcons.jira,
                            iconName: "Jira",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          cutomIcon(
                            FontAwesomeIcons.trello,
                            iconName: "Trello",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// For Custom Icon enter the font Awesome flutter icons as [FontAwesomeIcons.expand]
  Widget cutomIcon(IconData icon, {String iconName}) {
    return Column(
      children: [
        FaIcon(icon),
        SizedBox(
          height: 10,
        ),
        Text(
          iconName,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget customCircular({double value, String name, String percentage}) {
    return BounceInLeft(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            heightFactor: 2.5,
            widthFactor: 2.5,
            child: Text(percentage),
          ),
          Row(
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                value: value,
                backgroundColor: Colors.black,
                strokeWidth: 5,
              ),
              SizedBox(
                width: 10,
              ),
              Text(name),
            ],
          ),
        ],
      ),
    );
  }

  Widget customHeader({String name, double size, Color color}) {
    return SlideInRight(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "$name:",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: color,
            fontSize: size,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      // ignore: deprecated_member_use
      overflow: Overflow.visible,
      children: [
        shrinkOffset == 200
            ? Container(
                color: Colors.black,
              )
            : Image.network(
                "https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
                fit: BoxFit.fill,
              ),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: shrinkOffset == 200 ? Colors.white : null,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              "Chetan Koppal",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset(
                  "assets/images/chetan.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
