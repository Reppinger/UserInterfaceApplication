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
    add_form_elements
  end

  def add_form_elements
    label = UILabel.alloc.init
    if self.respondsToSelector(:edgesForExtendedLayout)
      self.edgesForExtendedLayout = UIRectEdgeNone
      label.frame = [[0,0], [300,30]]
    else
      label.frame = [[0,40], [300,30]]
    end
    label.backgroundColor = UIColor.clearColor
    label.textColor = UIColor.greenColor
    label.font = UIFont.fontWithName('HelveticaNeue-CondensedBold', size: 18)
    label.text = 'This is sample application'
    view.addSubview label
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