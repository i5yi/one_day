import 'package:fluro/fluro.dart';
import 'package:one_day/routers/router_init.dart';
import 'detail_page.dart';
import 'add_page.dart';
import 'setting_page.dart';
import 'theme_page.dart';
import 'setting_lock_page.dart';

class AppRouter implements IRouterProvider{

  static String detailPage = "/detail";
  static String addPage = "/add";
  static String settingPage = "/setting";
  static String settingLockPage = "/settingLock";
  static String themePage = "/theme";

  @override
  void initRouter(Router router) {
    router.define(detailPage, handler: Handler(handlerFunc: (_, params){
      String title = params['title'].first;
      String date = params['date'].first;
      String tag = params['tag'].first;
      String thumbnail = params['thumbnail'].first;
      return DetailPage(title:title,date:date,tag: tag,thumbnail: thumbnail,);
    }));

    router.define(addPage, handler: Handler(handlerFunc: (_, params) => AddPage()));
    router.define(settingPage, handler: Handler(handlerFunc: (_, params) => SettingPage()));
    router.define(themePage, handler: Handler(handlerFunc: (_, params) => ThemePage()));
    router.define(settingLockPage, handler: Handler(handlerFunc: (_, params){
      String type = params['type'].first;
      return SettingLockPage(type:type);
    }));

  }

}