class Tab1Controller < UIViewController

  def init
    super
    self.title = "Tab 1"
    self.tabBarItem.image = UIImage.imageNamed('FirstTab.png')
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.scrollViewTexturedBackgroundColor
    setupNavigationBar
  end

  def setupNavigationBar
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent
    right_button_item = UIBarButtonItem.alloc.initWithTitle('Add', style: UIBarButtonItemStyleBordered, target: self, action: 'click_add')
    self.navigationItem.setRightBarButtonItem(right_button_item)
  end

  def click_add
    @alert_box = UIAlertView.alloc.initWithTitle('Add button popup', message: "You have pressed the 'Add' button", delegate: nil, cancelButtonTitle: 'ok', otherButtonTitles: nil)
    @alert_box.show
  end


end