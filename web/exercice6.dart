library exercice6;
import 'dart:html';

part '../model/contact.dart';

List contact;
String select, data;
SelectElement sel;
TableElement table;

void main(){
  init();
  display();
  ButtonElement btn_create = query('#btn_create');
  btn_create.onClick.listen(create_contact);
  ButtonElement btn_modify = query('#btn_modify');
  btn_modify.onClick.listen(modify_contact);
  ButtonElement btn_delete = query('#btn_delete');
  btn_delete.onClick.listen(delete_contact);
  ButtonElement btn_next = query('#btn_next');
  btn_next.onClick.listen(next_contact);
  ButtonElement btn_previous = query('#btn_previous');
  btn_previous.onClick.listen(previous_contact);
}

display() {
  String list = '''<table align=center border=1><tr><th>IDcontact</th><th>Name</th><th>First Name</th><th>Email</th><th>Phone</th></tr>''';
  for (var contact in contacts) {
    var alink = '''
    <tr><td>${contact.idcontact}</td>
        <td>${contact.name}</td>
        <td>${contact.pname}</td>
        <td>${contact.email}</td>
        <td>${contact.phone}</td></tr>'''; 
    list = '$list ${alink}';
  }
  var alink = '''</table>''';
  list = '$list ${alink}';
  document.query('#contactslist').innerHtml = list;
}

create_contact(MouseEvent event){
  var newcontact = new Contact();    
  newcontact.idcontact = contacts.length+1;
  newcontact.name = query('#name').text;
  newcontact.pname = query('#pname').text;
  newcontact.email = query('#email').text;
  newcontact.phone = query('#phone').text;
  contacts.add(newcontact);
  display();
}

modify_contact(MouseEvent event){
  var updcontact = new Contact();    
  updcontact.idcontact = query('#idcontact');
  updcontact.name = query('#name').text;
  updcontact.pname = query('#pname').text;
  updcontact.email = query('#email').text;
  updcontact.phone = query('#phone').text;
  contacts.add(updcontact);
  display();
}

delete_contact(MouseEvent event){
  var delcontact = query('#idcontact');
  contacts.remove(delcontact);
  display();
}

next_contact(MouseEvent event){
  var _idcontact = query('#idcontact');
  //num __idcontact = _idcontact + 1;
  contacts.find(2);
  query('#name').text=contacts.name;
  query('pname').text=contacts.pname;
  query('email').text=contacts.email;
  query('phone').text=contacts.phone;
}

previous_contact(MouseEvent event){
  var _idcontact = query('#idcontact');
  var __idcontact = _idcontact - 1;
  var contact = contacts.elementAt(__idcontact);
}

