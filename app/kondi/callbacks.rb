module Kondi
  module Callbacks
    def self.included(receiver)
      receiver.extend(ClassMethods)
    end

    def run_before_callbacks(action, *args)
      run_callbacks(:before, action)
    end

    def run_after_callbacks(action, *args)
      run_callbacks(:after, action)
    end

    def run_callbacks(before_or_after, action, *args)
      self.class._callbacks_for(before_or_after, action).each do |method_name|
        send(method_name, *args)
      end
    end

    module ClassMethods
      def _callbacks
        @_callbacks ||= {}
      end

      def _callbacks_for(before_or_after, action)
        _callbacks["#{before_or_after}_#{action}".to_sym] ||= []
      end

      def before(action, callback)
        _callbacks_for(:before, action) << callback
      end

      def after(action, callback)
        _callbacks_for(:after, action) << callback
      end
    end
  end
end
