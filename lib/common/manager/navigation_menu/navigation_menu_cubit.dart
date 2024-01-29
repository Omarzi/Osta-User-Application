import 'package:osta_app/utils/constants/exports.dart';

class NavigationMenuCubit extends Cubit<int> {
  NavigationMenuCubit() : super(2);

  void setSelectedIndex(int index) {
    emit(index);
  }
}