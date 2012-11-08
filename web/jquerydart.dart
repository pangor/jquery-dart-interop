import 'dart:html';
import 'package:js/js.dart' as js;

hideIsDone() {
  window.alert('all done!');
}

void main() {
  js.scoped(() {
    js.context.jQuery('p').hide(1000, new js.Callback.once(() => hideIsDone()));
  });
}