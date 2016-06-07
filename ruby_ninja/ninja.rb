require "ninja/threaded"

# Use a thread pool to run the background jobs
Ninja.hide_in(Ninja::Threaded.new(4))

class FooBar
  include Ninja

  def my_method
    # some code
    p 'run in foreground 1'
    in_background do
      # this code will run in background
      p 'run in background'
    end
    # mode code
    p 'run in foreground 2'
  end
end
FooBar.new.my_method