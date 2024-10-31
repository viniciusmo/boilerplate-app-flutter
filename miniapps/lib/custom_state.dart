// Novo estado customizado
import 'package:miniapps/miniapp_state_management.dart';

class CustomState<T> extends ViewState {
  final T customData;
  const CustomState(this.customData);
}