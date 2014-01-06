class Tab2Controller < UIViewController

  def init
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemSearch, tag: 1)
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.redColor
    @countryNames = ['United States', 'France', 'India', 'China', 'Russia']
    add_label_and_button
    @picker = create_picker
    view.addSubview(@picker)
  end

  def add_label_and_button
    @label = UILabel.alloc.init
    @label.frame = [[10, 40], [300, 30]]
    @label.backgroundColor = UIColor.clearColor
    @label.text = 'Value'
    view.addSubview(@label)
    @button = UIButton.buttonWithType(UIButtonTypeSystem)
    @button.frame = [[120, 40], [150, 30]]
    @button.setTitle('Show Picker', forState: UIControlStateNormal)
    @button.addTarget(self, action: 'show_picker', forControlEvents: UIControlEventTouchUpInside)
    view.addSubview(@button)
  end

  def create_picker
    picker = UIPickerView.alloc.initWithFrame(CGRectMake(10,100,220,250))
    picker.hidden = true
    picker.showsSelectionIndicator = true
    picker.dataSource = self
    picker.delegate = self
    picker
  end

  def show_picker
    if @picker.isHidden
      @picker.hidden = false
      @button.setTitle('Hide Picker', forState: UIControlStateNormal)
    else
      @picker.hidden = true
      @button.setTitle('Show Picker', forState: UIControlStateNormal)
    end
  end

  def numberOfComponentsInPickerView(pickerView)
    1
  end

  def pickerView(pickerView, numberOfRowsInComponent:component)
    @countryNames.count
  end

  def pickerView(pickerView, titleForRow:row, forComponent:component)
    @countryNames[row]
  end

  def pickerView(pickerView, didSelectRow:row, inComponent:component)
    @label.text = @countryNames[row]
  end

end