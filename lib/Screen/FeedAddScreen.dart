import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/bloc/feedbloc/feedbloc_bloc.dart';
import 'package:myapp/cubit/cubit/select_photo_cubit.dart';
import 'package:myapp/model/feed_model.dart';
import 'package:myapp/utils/validate_form.dart';
import 'package:myapp/widget/drawer.dart';
import 'package:myapp/widget/image_view.dart';

class AddFeed extends StatefulWidget {
  @override
  _AddFeedState createState() => _AddFeedState();
}

class _AddFeedState extends State<AddFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text("Post Feed"),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SelectPhotoCubit>(
              create: (BuildContext context) => SelectPhotoCubit()),
          BlocProvider<FeedblocBloc>(
              create: (BuildContext context) => FeedblocBloc()),
        ],
        child: BlocBuilder<FeedblocBloc, FeedblocState>(
          builder: (context, state) {
            if (state is FeedblocInitial) {
              return FeedPostView();
            } else if (state is FeedblocLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is FeedblocSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done_outline_sharp,
                    color: Colors.green,
                    size: 30,
                  ),
                  Center(
                    child: Text(
                      "Succesfully added",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Builder(builder: (context) {
                    Future.delayed(Duration(seconds: 2)).then(
                      (value) {
                        Navigator.of(context).pushNamed('/first');
                      },
                    );
                    return Container();
                  })
                ],
              );
            }
            return FeedPostView();
          },
        ),
      ),
    );
  }
}

class FeedPostView extends StatefulWidget {
  @override
  _FeedPostViewState createState() => _FeedPostViewState();
}

class _FeedPostViewState extends State<FeedPostView> {
  TextEditingController nameController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  FeedModel feedModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter Name of wonder",
                alignLabelWithHint: true,
                hintText: "Exp: taj Mahala",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: "Enter Description",
                alignLabelWithHint: true,
                hintText: "Enter brief description of wonder",
              ),
            ),
          ),
          BlocBuilder<SelectPhotoCubit, SelectPhotoState>(
            builder: (context, state) {
              return Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: () async {
                        PickedFile image = await setImage();
                        context
                            .read<SelectPhotoCubit>()
                            .photoSelected(image.path.toString());
                        //var abc = image.path.toString();
                      },
                      child: Row(
                        children: [Icon(Icons.photo), Text("select image")],
                      ),
                    ),
                  ),
                  state is SelectPhotoInitial
                      ? Text(state.props[0])
                      : Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: imageview(state.props[0], context),
                        )
                ],
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            color: Colors.redAccent[100],
            onPressed: () async {
              feedModel = FeedModel(
                name: nameController.text.toString(),
                description: descriptionController.text.toString(),
                imageUrl:
                    BlocProvider.of<SelectPhotoCubit>(context).state.props[0],
              );
              var error = await Validator().validateForm(feedModel);
              if (error != 'Success') {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      error.toString(),
                    ),
                  ),
                );
              } else if (error == 'Success') {
                print("Success");
                BlocProvider.of<FeedblocBloc>(context)
                    .add(FeedblocAddEvent(feedModel: feedModel));
              }
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }

  Future<PickedFile> setImage() async {
    final PickedFile file =
        await ImagePicker().getImage(source: ImageSource.gallery);
    return file;
  }
}
