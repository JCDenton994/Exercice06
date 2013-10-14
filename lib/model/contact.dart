part of exercice6;

class Contact {
  var idcontact, name, pname, email, phone;
}

var contacts = new List();

init() {
  var contact1 = new Contact();
  contact1.idcontact = 1;
  contact1.name = "Échantillon";
  contact1.pname = "Jean";
  contact1.email = "jean.echantillon@gmail.com";
  contact1.phone = "555-5555";
  contacts.add(contact1);
  
  var contact2 = new Contact();
  contact2.idcontact = 2;
  contact2.name = "Doe";
  contact2.pname = "John";
  contact2.email = "john.doe@gmail.com";
  contact2.phone = "555-5556";
  contacts.add(contact2);
 
  var contact3 = new Contact();
  contact3.idcontact = 3;
  contact3.name = "Échantillon";
  contact3.pname = "Jeanne";
  contact3.email = "jeanne.echantillon@gmail.com";
  contact3.phone = "555-5557";
  contacts.add(contact3);
}
