import 'dart:html';
import 'package:js/js.dart';

void main() {
  scoped(() {
    var $ = context;
    $.$('#test').hide('slow', new Callback.once(() {
      window.alert("The paragraph is now hidden");
    }));
  });
}