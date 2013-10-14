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
}

void display() {
  TableElement table = document.query('#contactlist');
  for (var contact in contacts) {
    addContactRow(table, contact);
  }
  ButtonElement btn_create = document.query('#btn_create');
  btn_create.onClick.listen(createNewContact);
}

void addContactRow(TableElement table, Contact contact) {
  TableRowElement tRow = table.addRow();
  
  var txtidcontact = new TextInputElement();
  txtidcontact.value = contact.idcontact;
  tRow.insertCell(0).children.add(txtidcontact);
  
  var txtname = new TextInputElement();
  txtname.value = contact.name;
  tRow.insertCell(1).children.add(txtname);
  
  var txtpname = new TextInputElement();
  txtpname.value = contact.pname;
  tRow.insertCell(2).children.add(txtpname);
  
  var txtemail = new TextInputElement();
  txtemail.value = contact.email;
  tRow.insertCell(3).children.add(txtemail);
  
  var txtphone = new TextInputElement();
  txtphone.value = contact.phone;
  tRow.insertCell(4).children.add(txtphone);
  
  var btn_delete = new ButtonInputElement();
  btn_delete.onClick.listen(deleteContactRow);
  btn_delete.value = 'Delete';
  tRow.insertCell(5).children.add(btn_delete);
}

void deleteContactRow(Event e) {
    Element cell = e.target;
    TableRowElement row = cell.parent.parent;
    TableElement table = row.parent.parent;
    table.deleteRow(table.rows.indexOf(row));
}

void createNewContact(Event e) {
  TextInputElement txtidcontact = document.query('#idcontact');
  TextInputElement txtname = document.query('#name');
  TextInputElement txtpname = document.query('#pname');
  TextInputElement txtemail = document.query('#email');
  TextInputElement txtphone = document.query('#phone');
  
  
  if (txtidcontact.validity.valid && txtname.validity.valid && txtpname.validity.valid && txtemail.validity.valid && txtphone.validity.valid) {
    var idcontact = txtidcontact.value;
    var name = txtname.value;
    var pname = txtpname.value;
    var email = txtemail.value;
    var phone = txtphone.value;
  
    TableElement table = document.query('#contactlist');
    var contact = new Contact(idcontact, name, pname, email, phone);
    addContactRow(table, contact);
    
    txtidcontact.value = "";
    txtname.value = "";
    txtpname.value = "";
    txtemail.value = "";
    txtphone.value = "";
    
    e.preventDefault();
  }
}