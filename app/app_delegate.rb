class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    rootController = TestViewController.alloc.init
    navController  = UINavigationController.alloc.initWithRootViewController(rootController)

    @window.rootViewController = navController
    @window.makeKeyAndVisible

    true
  end
end

class TestViewController < UIViewController
  def viewDidLoad
    super

    navigationItem.rightBarButtonItem = UIBarButtonItem.save do
      puts "You'll never see this!"
    end
  end
end

class UIBarButtonItem
  def self.save(&block)
    # The app will crash attempting to invoke the `call` selector on `block`.
    #
    # BubbleWrap uses a similar technique for UIControl.
    # See https://github.com/rubymotion/BubbleWrap/blob/master/motion/ui/ui_control.rb#L12
    alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemSave, target:block, action:"call")
  end
end
