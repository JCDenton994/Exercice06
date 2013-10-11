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
  document.query('#contactslist').innerHtml = list;
}

create_contact(MouseEvent event){
  var contact = new Contact();    
  contact.idcontact = contacts.length+1;
  contact.name = query('#name').text;
  contact.pname = query('#pname').text;
  contact.email = query('#email').text;
  contact.phone = query('#phone').text;
  var added = contacts.add(contact);
  display();
}

modify_contact(MouseEvent event){
  var contact = new Contact();    
  contact.idcontact = query('#idcontact');
  contact.name = query('#name').text;
  contact.pname = query('#pname').text;
  contact.email = query('#email').text;
  contact.phone = query('#phone').text;
  var modified = contacts.update(contact);
  display();
}

delete_contact(MouseEvent event){
  
}

next_contact(MouseEvent event){
}

previous_contact(MouseEvent event){
}

