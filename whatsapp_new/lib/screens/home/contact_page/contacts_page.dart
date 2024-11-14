import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}
// var users = allUsers;

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SlidableAutoCloseBehavior(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    enabled: true,
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      closeThreshold: 0.1,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          spacing: 0,
                          // backgroundColor: Colors.transparent
                          backgroundColor:
                              const Color(0xFFFFFFFF).withOpacity(0.5),
                          onPressed: ((context) {
                            Navigator.pushNamed(context, "/editContact");
                          }),
                          icon: Icons.mode_edit_outlined,

                          padding: const EdgeInsets.only(left: 60),
                          foregroundColor: const Color(0xFFFC1683),
                        ),
                        SlidableAction(
                          backgroundColor: Colors.transparent,
                          icon: Icons.delete,
                          onPressed: (context) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width, // Set full width
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
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
                                                  Navigator.of(context).pop(),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
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
                                          "Delete Contact",
                                          style: deletetext,
                                        ),
                                        const SizedBox(height: 9),
                                        Text(
                                          "Are you sure want to delete ?",
                                          textAlign: TextAlign.center,
                                          style: numbersubtext,
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 124,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color:
                                                      const Color(0xFFF2F2F2)),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Cancel",
                                                  style: cancelbuttontext,
                                                ),
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 10 ,
                                            // ),
                                            Container(
                                              height: 40,
                                              width: 124,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color:
                                                      const Color(0xFFFC1683)),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Delete",
                                                  style: deletebuttontext,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(
                                        //       horizontal: 20),
                                        //   child: Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceEvenly,
                                        //     children: [
                                        //       ElevatedButton(
                                        //         onPressed: () {
                                        //           Navigator.pushNamed(
                                        //               context, "/");
                                        //         },
                                        //         style:
                                        //             ElevatedButton.styleFrom(
                                        //           backgroundColor:
                                        //               const Color(0xFFF2F2F2),
                                        //           minimumSize:
                                        //               const Size(130, 40),
                                        //           shape:
                                        //               RoundedRectangleBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     30),
                                        //             side: BorderSide.none,
                                        //           ),
                                        //           elevation: 0,
                                        //         ),
                                        //         child: Text(
                                        //           "Cancel",
                                        //           style: cancelbuttontext,
                                        //         ),
                                        //       ),
                                        //       ElevatedButton(
                                        //         onPressed: () {
                                        //           // Navigator.of(context).pop();
                                        //           Navigator.pushNamed(context,
                                        //               "/contactsPage");
                                        //         },
                                        //         style:
                                        //             ElevatedButton.styleFrom(
                                        //           backgroundColor:
                                        //               const Color(0xFFFC1683),
                                        //           minimumSize:
                                        //               const Size(130, 40),
                                        //           shape:
                                        //               RoundedRectangleBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     30),
                                        //             side: BorderSide.none,
                                        //           ),
                                        //           elevation: 0,
                                        //         ),
                                        //         child: Text(
                                        //           'Delete',
                                        //           style: deletebuttontext,
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          foregroundColor: const Color(0xFFFC1683),
                          borderRadius: BorderRadius.zero,
                        ),
                      ],
                    ),
                    child: buildUserListTile([index]),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
      floatingActionButton: RawMaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addContactPage");
        },
        fillColor: Colors.transparent, // Transparent background
        elevation: 0, // Remove shadow and elevation
        highlightElevation: 0, // Remove highlight elevation on press
        splashColor: Colors.transparent, // Remove splash effect color
        hoverColor: Colors.transparent, // Remove hover effect color
        focusColor: Colors.transparent, // Remove focus effect color
        child: SvgPicture.asset(
          'assets/images/Framecontact.svg',
          width: 150,
          height: 60,
        ),
      ),
      // floatingActionButton: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       // begin: Alignment.topLeft,
      //       // end: Alignment.bottomCenter,
      //       colors: [
      //         // Color(0xFF4825A1).withOpacity(0.9),
      //         // Color(0xFFFC1683).withOpacity(0.9),

      //         // Color(0xFF4825A1).withOpacity(0.9),
      //         // Color.fromARGB(255, 27, 26, 31).withOpacity(0.9),

      //         // Color(0xFFFC1683).withOpacity(0.9),
      //         // Color(0xFFFC1683).withOpacity(0.9),
      //         // Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFFFC1683).withOpacity(0.8),
      //         const Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFF4825A1).withOpacity(0.9),
      //         const Color(0xFF4825A1).withOpacity(0.9),
      //         // const Color(0xFF4825A1).withOpacity(0.9),
      //       ],
      //     ),
      //     borderRadius: BorderRadius.circular(50),
      //   ),
      //   child: FloatingActionButton.extended(
      //     onPressed: () {
      //       Navigator.pushNamed(context, "/addContactPage");
      //     },
      //     backgroundColor: Colors.transparent,
      //     elevation: 10.0,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(50),
      //     ),
      //     label: Text(
      //       'Add Contact',
      //       style: sendmessagetext,
      //     ),
      //     icon: const Icon(
      //       Icons.person_add_alt,
      //       color: Colors.white,
      //       size: 22,
      //     ),
      //     foregroundColor: Colors.black45,
      //   ),
      // )
    );
  }

  // void _showSnackbBar(BuildContext context, String message, Color color) {
  //   final snackBar = SnackBar(content: Text(message), backgroundColor: color);
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }

  Widget buildUserListTile(user) => Builder(
        builder: (context) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pushNamed(context, "/contactDetailsPage");
            // final slidable = Slidable.of(context)!;
            // final isClosed =
            //     slidable.actionPaneType.value == ActionPaneType.none;
            // if (isClosed) {
            //   slidable.openCurrentActionPane();
            // } else {
            //   slidable.close();
            // }
          },
          child: ListTile(
              contentPadding: const EdgeInsets.all(5),
              leading: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  child: Container(
                    alignment: Alignment.center,
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: CustomTextStyling().contactsnamecolor,
                      borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Text(
                      "M",
                      // "${user?['name'][0]}",
                      style: cardheadetext,
                    ),
                  ),
                ),
              ),
              title: Text(
                "Mukesh Kumar",
                // user?['name'],
                style: cardcontactstext,
              ),
              subtitle: Text(
                "Ph No: 63528 32568 ",
                // user?['mobile'],
                style: contectcardsubtitletext,
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, "/contactDetailsPage");
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
