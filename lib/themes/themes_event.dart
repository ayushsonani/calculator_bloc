abstract class ThemesEvent {}

class InitEvent2 extends ThemesEvent {

}
class ThemeSet extends ThemesEvent{
  bool theme = true;
  ThemeSet({required this.theme});
}