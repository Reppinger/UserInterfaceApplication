class Tab2Controller < UIViewController

  def init
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemSearch, tag: 1)
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.redColor
  end
end