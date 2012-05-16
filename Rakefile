$:.unshift('/Library/RubyMotion/lib')
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'SillylistMotion'

  app.files_dependencies(
    # Kondi dependencies
    'app/kondi/table_view_cell.rb' => 'app/kondi/callbacks.rb',

    # App dependencies
    'app/app_delegate.rb'    => 'app/list_controller.rb',
    'app/list_controller.rb' => ['app/todo_item.rb', 'app/kondi/table_view_cell.rb']
  )

  app.files = Dir.glob(File.join(app.project_dir, 'app/kondi/**/*.rb')) | Dir.glob(File.join(app.project_dir, 'app/**/*.rb'))

end
