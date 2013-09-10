class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = createTabBar
    @window.makeKeyAndVisible
    true
  end

  def createTabBar
    tab_bar_controller = UITabBarController.alloc.init
    tab_bar_controller.viewControllers = [
        UINavigationController.alloc.initWithRootViewController(Tab1Controller.alloc.init),
        Tab2Controller.alloc.init,
        Tab3Contoller.alloc.init
    ]
    tab_bar_controller
  end

end
