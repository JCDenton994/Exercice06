part of exercice6;

class Contact {
  var idcontact, name, pname, email, phone;
  Contact(this.idcontact, this.name, this.pname, this.email, this.phone){}
}

var contacts = new List();

init() {

 contacts.add(new Contact("1","Échantillon","Jean","jean.echantillon@gmail.com","555-555-5555"));
 contacts.add(new Contact("2","Doe","John","john.doe@gmail.com","555-555-5556")); 
 contacts.add(new Contact("3","Échantillon","Jeanne","jeanne.echantillon@gmail.com","555-555-5557")); 
}
