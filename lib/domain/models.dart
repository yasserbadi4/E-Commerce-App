import 'package:json_annotation/json_annotation.dart';

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}


class SliderViewObject{
  SliderObject sliderObject;
  int numberOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numberOfSlides, this.currentIndex);
}

class Customers {
  String id;
  String name;
  int numOfNotifications;

  Customers(this.id, this.name, this.numOfNotifications);
}

class Contacts {
  String phone;
  String email;
  String link;

  Contacts(this.phone, this.email, this.link);
}

class Authentication {
  Customers customers;
  Contacts contacts;

  Authentication(this.customers, this.contacts);
}