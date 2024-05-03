import 'package:chat_app/home/convertation_item.dart';
import 'package:chat_app/new/new.dart';
import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> lstConvertation = [
    {
      "id": 1,
      "userImage": "assets/img/image1.png",
      "userName": "Jhon Doe",
      "lastMessage": "Hello world, Hello world, Hello world,",
      "timeMessage": "12:30",
      "nbrMsgNotSeen": 2,
    },
    {
      "id": 2,
      "userImage": "assets/img/image2.png",
      "userName": "Steve Smith",
      "lastMessage":
          "Hello world, Hello world, Hello world, Hello world, Hello world, Hello world,Hello world, Hello world, Hello world,",
      "timeMessage": "11:30",
      // "nbrMsgNotSeen": 2,
    },
    {
      "id": 3,
      "userImage": "assets/img/image3.png",
      "userName": "Jane Doe",
      "lastMessage": "Hello world, Hello world, Hello world,",
      "timeMessage": "10:30",
      // "nbrMsgNotSeen": 2,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledTitle("Messages"),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: lstConvertation.length,
                  itemBuilder: (_, index) {
                    return Slidable(
                        key: ValueKey(lstConvertation[index]["id"]),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(onDismissed: () {
                            // delete item ...
                            print("delete item from dimiss");
                          }),
                          children: [
                            // A SlidableAction can have an icon and/or a label.
                            SlidableAction(
                              onPressed: (context) {
                                // delete item : ...
                                print("delete item from click");
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      // show dialog :
                                      return AlertDialog(
                                        title: StyledHeading("Confirmation"),
                                        content: StyledText(
                                            "Are you sure you want to delete this conversation ?"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              // show snackbar
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                content: StyledHeading(
                                                  'Convertation deleted.',
                                                  color: Colors.white,
                                                ),
                                                showCloseIcon: true,
                                                backgroundColor:
                                                    AppColors.successColor,
                                                duration:
                                                    const Duration(seconds: 2),
                                              ));
                                              // close dialog :
                                              Navigator.of(context).pop();
                                            },
                                            child: StyledText(
                                              'Confirm',
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              // close dialog :

                                              Navigator.of(context).pop();
                                            },
                                            child: StyledText(
                                              'Close',
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              backgroundColor: AppColors.dangerColor,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                          ],
                        ),
                        child: Convertation(lstConvertation[index]));
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const New(),
              ));
        },
      ),
    );
  }
}
