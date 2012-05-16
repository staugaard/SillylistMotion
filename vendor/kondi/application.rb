module Kondi
  class Application
    def self.root_view(view = nil)
      @root_view = view if view
      @root_view
    end

    def application(application, didFinishLaunchingWithOptions:launchOptions)
      @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
      @window.rootViewController = self.class.root_view.new
      @window.makeKeyAndVisible
      true
    end
  end
end
