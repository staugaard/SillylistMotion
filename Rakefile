$:.unshift('/Library/RubyMotion/lib')
require 'motion/project'
require './vendor/motion_require/dependency_builder'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'SillylistMotion'

  MotionRequire::DependencyBuilder.build(app)
end
