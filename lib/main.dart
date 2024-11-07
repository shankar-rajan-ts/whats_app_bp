import 'package:flutter/material.dart';
import 'package:whatsapp/screens/message_report/message_details.dart';
import 'package:whatsapp/screens/message_report/message_report_page.dart';
import 'package:whatsapp/screens/nav-bar/chats/chat_page.dart';
import 'package:whatsapp/screens/home/contact_page/add%20_contact_page.dart';
import 'package:whatsapp/screens/home/contact_page/contact_details_page.dart';
import 'package:whatsapp/screens/home/contact_page/contacts_page.dart';
import 'package:whatsapp/screens/home/contact_page/edit_contact.dart';
import 'package:whatsapp/screens/home/group_page/choose_contact_page.dart';
import 'package:whatsapp/screens/home/group_page/delete_contact_page.dart';
// import 'package:whatsapp/screens/home/dashbord.dart';
import 'package:whatsapp/screens/home/group_page/group_page.dart';
import 'package:whatsapp/screens/home/group_page/selected_contacts_page.dart';
import 'package:whatsapp/screens/home/segmented.dart';
import 'package:whatsapp/screens/nav-bar/chats/personal_chat.dart';
import 'package:whatsapp/screens/nav-bar/chats/service_list_model.dart';
import 'package:whatsapp/screens/nav-bar/index.dart';
import 'package:whatsapp/screens/nav-bar/template/create_tremplate.dart';
import 'package:whatsapp/screens/search_page/search_page.dart';
import 'package:whatsapp/screens/nav-bar/template/nav_template_page.dart';
import 'package:whatsapp/screens/send_message/contact_page/add_contact.dart';
import 'package:whatsapp/screens/send_message/contact_page/selected_contacts.dart';
import 'package:whatsapp/screens/send_message/group_page/add_group.dart';
import 'package:whatsapp/screens/send_message/group_page/selected_group.dart';
import 'package:whatsapp/screens/send_message/group_page/view_group.dart';
import 'package:whatsapp/screens/send_message/send_message_page.dart';
import 'package:whatsapp/screens/send_message/contact_page/view_contacts.dart';
import 'package:whatsapp/screens/templates_page/template.dart';
import 'package:whatsapp/screens/templates_page/templates_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) =>  HomeNav(),
          // "/MainDashbord": (BuildContext context) => const HomeNav(),
          "/templatePage": (BuildContext context) => const TemplatePage(),
          "/chatPage": (BuildContext context) => const ChatPage(),
          "/contactsPage": (BuildContext context) => const ContactsPage(),
          "/groupPage": (BuildContext context) => const GroupPage(),
          "/setButton": (BuildContext context) => const SetButton(),  
          "/editContact": (BuildContext context) => const EditContact(),
          "/addContactPage": (BuildContext context) => const AddContactPage(),
          "/contactDetailsPage": (BuildContext context) =>
              const ContactDetailsPage(),
          "/deleteContactPage": (BuildContext context) =>
              const DeleteContactPage(),
          "/chooseContactPage": (BuildContext context) =>
              const ChooseContactPage(),
          "/selectedContactsPage": (BuildContext context) =>
              const SelectedContactsPage(),
          "/searchPage": (BuildContext context) => const SearchPage(),
          "/templatesPage": (BuildContext context) => const TemplatesPage(),
          "/templateCreat": (BuildContext context) => const TemplateCreat(),
          "/messageReportPage": (BuildContext context) => const MessageReportPage(),
          "/messageDetails": (BuildContext context) => const MessageDetails(),
          "/personalChat": (BuildContext context) => const PersonalChat(),
          "/serviceListModel": (BuildContext context) => const ServiceListModel(),
          "/sendMessagePage": (BuildContext context) => const SendMessagePage(),
          "/addContacts": (BuildContext context) => const AddContacts(),
          "/selectContacts": (BuildContext context) => const SelectContacts(),
          "/viewContacts": (BuildContext context) => const ViewContacts(),
          "/addGroup": (BuildContext context) => const AddGroup(),
          "/selectedGroup": (BuildContext context) => const SelectedGroup(),
          "/viewGroup": (BuildContext context) => const ViewGroup(),
          "/createTremplate": (BuildContext context) => const CreateTremplate(),














        });
  }
}
