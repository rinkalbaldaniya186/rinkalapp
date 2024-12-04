import 'package:flutter/material.dart';

class WpContact{

    String name;
    final IconData _myIcon;
    String msg;
    var profilePic;
    var time;
    var notification;

    IconData get myIcon => _myIcon;

  WpContact(this.name,this._myIcon, this.msg, this.profilePic, this.time,{this.notification});
}
