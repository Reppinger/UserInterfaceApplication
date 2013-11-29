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
    label = create_label
    view.addSubview label
    textfield = create_textfield
    view.addSubview textfield
    @switch = create_switch
    view.addSubview @switch
    @slider = create_slider
    view.addSubview @slider
    @normalButton = create_button
    view.addSubview @normalButton
  end

  def create_label
    label = UILabel.alloc.init
    if self.respondsToSelector(:edgesForExtendedLayout)
      self.edgesForExtendedLayout = UIRectEdgeNone
      label.frame = [[0, 0], [300, 30]]
    else
      label.frame = [[0, 40], [300, 30]]
    end
    label.backgroundColor = UIColor.clearColor
    label.textColor = UIColor.greenColor
    label.font = UIFont.fontWithName('HelveticaNeue-CondensedBold', size: 18)
    label.text = 'This is sample application'
    label
  end

  def create_textfield
    textbox = UITextField.alloc.initWithFrame([[10, 80], [200, 35]])
    textbox.borderStyle = UITextBorderStyleRoundedRect
    textbox.placeholder = 'Type..'
    textbox.textAlignment = UITextAlignmentCenter
    textbox
  end

  def create_switch
    switch = UISwitch.alloc.initWithFrame([[10, 130], [200, 35]])
    switch.addTarget(self, action: 'switch_is_changed', forControlEvents: UIControlEventValueChanged)
    switch
  end

  def create_slider
    slider = UISlider.alloc.initWithFrame([[10,160],[200,35]])
    slider.minimumValue = 0
    slider.maximumValue = 1000
    slider.value = slider.maximumValue/2
    slider.addTarget(self, action: 'slider_value_changed', forControlEvents: UIControlEventValueChanged)
    slider
  end

  def create_button
    button = UIButton.buttonWithType(UIButtonTypeSystem)
    button.frame = [[10,200],[200,35]]
    button.setTitle('Click Me', forState: UIControlStateNormal)
    button.setTitle('You have clicked me', forState: UIControlStateHighlighted)
    button.addTarget(self, action: 'button_is_pressed', forControlEvents: UIControlEventTouchDown)
    button
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

  def switch_is_changed
    if @switch.on?

    else

    end
  end

  def slider_value_changed

  end

  def button_is_pressed

  end

end