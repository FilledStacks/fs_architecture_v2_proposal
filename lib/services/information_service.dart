import 'package:injectable/injectable.dart';
import 'package:observable_ish/value/value.dart';
import 'package:provider_architecture/provider_architecture.dart';

@lazySingleton
class InformationService with ReactiveServiceMixin {
  InformationService() {
    listenToReactiveValues([
      _postCount,
      ..._reactiveValue,
    ]);
  }

  List<RxValue<int>> _reactiveValue = List<RxValue<int>>.generate(
      1000, (index) => RxValue<int>(initial: index));

  int listValueForId(int id) => _reactiveValue[id].value;

  void incrementListValueForId(int id) => _reactiveValue[id].value++;

  RxValue<int> _postCount = RxValue<int>(initial: 0);
  int get postCount => _postCount.value;

  void updatePostCount() {
    _postCount.value++;
  }

  void resetCount() {
    _postCount.value = 0;
  }
}
