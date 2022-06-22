import 'package:bluetooth_chat/contacts/model/contacts_model.dart';
import 'package:get/get.dart';


class ContactsController extends GetxController {



  List<ContactsModel> contactsList = [
    ContactsModel('BT Speaker','No Message'),
    ContactsModel('Q Mobile i6i','No Message'),
    ContactsModel('BT-62016S3','No Message'),
    ContactsModel('Car BT-APP','No Message'),
    ContactsModel('RAJPOOTCHUAHAN','I`m also fine'),
    ContactsModel('M Bilal','No Message'),
  ];


  void onRefresh (){}

}
