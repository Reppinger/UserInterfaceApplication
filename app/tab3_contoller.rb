class Tab3Contoller < UIViewController

  def init
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemTopRated, tag: 1)
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
  end
end