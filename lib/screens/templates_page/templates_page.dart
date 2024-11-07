import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

enum Actions { delete, edit }

class TemplatesPage extends StatefulWidget {
  const TemplatesPage({super.key});

  @override
  State<TemplatesPage> createState() => _TemplatesPage();
}

class _TemplatesPage extends State<TemplatesPage> {
  // var users = allUsers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              'assets/images/arrow_back_bbb.svg',
              // height: 0,
              // width: 10,
              fit: BoxFit.none,
            ),
          ),
          title: const GradientText(
            Text(
              "Templates",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
            colors: [
              Color.fromARGB(255, 202, 27, 53),
              Color.fromARGB(255, 202, 27, 53),
              Color.fromARGB(255, 108, 29, 154),
              Color.fromARGB(255, 69, 71, 192),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SvgPicture.asset(
                  'assets/images/edit_xc.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.none,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                children: [
                  TextField(
                    style: inputboxtextfiles,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        hintText: "Search By Name (or) Mobile Number...",
                        hintStyle: contectcardsubtitletext,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFF888888),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide:
                              const BorderSide(color: Color(0xFFDADADA)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          // borderSide: BorderSide(color: Color.fromARGB(255, 117, 117, 60)),
                          borderSide:
                              const BorderSide(color: Color(0xFFDADADA)),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SlidableAutoCloseBehavior(
                  // closeWhenOpened: true,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    // itemCount: users.length,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, index) {
                      // final user = users[index];
                      // return buildUserListTile(user);
                      return Slidable(
                        endActionPane: ActionPane(
                            motion: const BehindMotion(),
                            // dismissible: DismissiblePane(
                            //     onDismissed: () => _onDismissed(
                            //         index, Actions.delete as Action<Intent>)),
                            children: [
                              SlidableAction(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Color(0xFFFC1683),
                                  icon: Icons.edit,
                                  padding: const EdgeInsets.only(left: 60),

                                  // label: 'share',
                                  onPressed: ((context) {
                                    Navigator.pushNamed(
                                        context, "/listEditTemplate");
                                  })
                                  // _onDismissed(index, Actions.share as Action<Intent>),
                                  ),
                              SlidableAction(
                                backgroundColor: Colors.white,
                                foregroundColor: Color(0xFFFC1683),
                                icon: Icons.delete,
                                // label: 'share',
                                onPressed: (context) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        insetPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width, // Set full width
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: <Widget>[
                                                  IconButton(
                                                    icon: const Icon(
                                                      Icons.close_rounded,
                                                      size: 24,
                                                      color: Colors.black,
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/image.png",
                                                      height: 120,
                                                      width: 168,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "Delete Template",
                                                style: deletetext,
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                "Are you sure want to delete ?",
                                                textAlign: TextAlign.center,
                                                style: numbersubtext,
                                              ),
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context, "/");
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            const Color(
                                                                0xFFF2F2F2),
                                                        minimumSize:
                                                            const Size(124, 35),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          side: BorderSide.none,
                                                        ),
                                                        elevation: 0,
                                                      ),
                                                      child: Text(
                                                        "Cancel",
                                                        style: cancelbuttontext,
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Navigator.of(context).pop();
                                                        Navigator.pushNamed(
                                                            context,
                                                            "/groupPage");
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            const Color(
                                                                0xFFFC1683),
                                                        minimumSize:
                                                            const Size(124, 35),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          side: BorderSide.none,
                                                        ),
                                                        elevation: 0,
                                                      ),
                                                      child: Text(
                                                        'Delete',
                                                        style: deletebuttontext,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 20),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              // onPressed: (context) =>
                              //     _onDismissed(index, Actions.share as Action<Intent>),
                            ]),
                        child: buildUserListTile(context),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32,)
          ],
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment.topLeft,
              // end: Alignment.bottomCenter,
              colors: [
                // Color(0xFF4825A1).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.9),

                // Color(0xFF4825A1).withOpacity(0.9),
                // Color.fromARGB(255, 27, 26, 31).withOpacity(0.9),

                // Color(0xFFFC1683).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFF4825A1).withOpacity(0.9),
                const Color(0xFF4825A1).withOpacity(0.9),
                // const Color(0xFF4825A1).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, "/addContactPage");
            },
            backgroundColor: Colors.transparent,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            label: Text(
              'Create Template',
              style: sendmessagetext,
            ),
            icon: const Icon(
              Icons.dashboard_customize,
              color: Colors.white,
            ),
            foregroundColor: Colors.black45,
          ),
        ));
  }

  // void _onDismissed(int index, Action action) {
  //   final user = users[index];
  //   setState(() => users.removeAt(index));
  //   switch (action) {
  //     case Actions.delete:
  //       _showSnackbBar(context, '{Text} is deleted', Colors.red);
  //       break;
  //     case Actions.edit:
  //       _showSnackbBar(context, '{Text} is edit', Colors.red);
  //       break;
  //     // case Actions.share:
  //     //   _showSnackbBar(context, '${user.name} is deleted', Colors.red);
  //     //   break;
  //   }
  // }

  // void _showSnackbBar(BuildContext context, String message, Color color) {
  //   final snackBar = SnackBar(content: Text(message), backgroundColor: color);
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }

  Widget buildUserListTile(user) => Builder(
        builder: (context) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pushNamed(context, "/templateCreat");
          },
          child: ListTile(
              contentPadding: const EdgeInsets.all(3),
              title: Text(
                "bfx_welcome",
                style: cardcontactstext,
              ),
              subtitle: Text(
                "Rejected",
                style: templatestext1,
              ),
              trailing: const Icon(Icons.chevron_right),

              // iconColor: Colors.red,
              onTap: () {
                Navigator.pushNamed(context, "/templateCreat");
                // final slidable = Slidable.of(context)!;
                // final isClosed =
                //     slidable.actionPaneType.value == ActionPaneType.none;
                // if (isClosed) {
                //   slidable.openCurrentActionPane();
                // } else {
                //   slidable.close();
                // }
              }),
        ),
      );
}
