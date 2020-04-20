import 'package:provider_architecture/provider_architecture.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel() {
    print('HomeViewModel created');
  }

  void updateData() {
    notifyListeners();
  }

  void initialise() {
    print('HomeViewModel initialise');
  }
}
