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
}

display() {
  String list = '''<table align=center border=1><tr><th>IDcontact</th><th>Name</th><th>First Name</th><th>Email</th><th>Phone</th><th>Select</th></tr>''';
  for (var contact in contacts) {
    var alink = '''
    <tr><td>${contact.idcontact}</td>
        <td>${contact.name}</td>
        <td>${contact.pname}</td>
        <td>${contact.email}</td>
        <td>${contact.phone}</td>
        <td><button id="" type="button" on-click=selecti(${contact.idcontact}>Sel</td></tr>'''; 
    list = '$list ${alink}';
  }
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

selecti(MouseEvent event){
  query('#idcontact').text= contacts.idcontact;
  query('#name').text= contacts.name;
  query('#pname').text=contacts.pname;
  query('#email').text=contacts.email;
  query('#phone').text=contacts.phone;
}