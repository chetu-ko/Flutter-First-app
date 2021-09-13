import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/bloc/feedbloc/feedbloc_bloc.dart';
import 'package:myapp/model/feed_model.dart';
import 'package:myapp/repository/feed_repo.dart';
import 'package:myapp/responsive.dart';
import 'package:myapp/widget/add_feed_button.dart';
import 'package:myapp/widget/drawer.dart';

class FirstScreen extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<FirstScreen> {
  void initState() {
    super.initState();
    BlocProvider.of<FeedblocBloc>(context).add(FeedblocFetchEvent());
  }

  var titleList = [];

  var descList = [];

  var imgList = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      floatingActionButton: floatingActionButton(context),
      drawer: drawer(context),
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.8),
        title: Text(
          'My First App',
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          BlocProvider.of<FeedblocBloc>(context).add(FeedblocFetchEvent());
          return FeedRepository().fetchFeed();
        },
        child: BlocBuilder<FeedblocBloc, FeedblocState>(
          builder: (context, state) {
            if (state is FeedblocLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is FeedblocLoadedState) {
              return ListView(
                children: state.listfeedmodel.map<Widget>(
                  (e) {
                    return homebuilder(
                        feedModel: e, context: context, width: width);
                  },
                ).toList(),
              );
            }
            return Container(
              child: Center(
                child:
                    Text("No wonder to show yet. add the wonders to show Here"),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget homebuilder({FeedModel feedModel, BuildContext context, double width}) {
  return GestureDetector(
    onTap: () {
      showDialogFunc(feedModel, context);
    },
    // Card Which Holds Layout Of ListView Item
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: 100,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 80,
                child: Image.network(
                  feedModel.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: Resposnive.isdesktop(context) ? width * 0.8 : null,
                      child: Text(
                        feedModel.name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: Resposnive.isdesktop(context)
                          ? width * 0.8
                          : width * 0.5,
                      child: Text(
                        feedModel.description,
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

// This is a block of Model Dialog
showDialogFunc(FeedModel feedModel, BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Card(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              height: 400,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      feedModel.imageUrl,
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Text(
                      feedModel.name,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            feedModel.description,
                            style: TextStyle(
                                fontSize: Resposnive.isdesktop(context)
                                    ? 15
                                    : MediaQuery.of(context).size.width * 0.03,
                                color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
