require "./glut/*"

@[Link("GL")]
lib GL
  COLOR_BUFFER_BIT = 0x00004000
  DEPTH_BUFFER_BIT = 0x00000100
  alias GLbitfield = UInt32
  fun clear = glClear(mask : GLbitfield) : Void
end

module GLUT_Sample
  include GLUT
  puts "start glut sample"

  def self.render
    #puts "render"
    GL.clear GL::COLOR_BUFFER_BIT | GL::DEPTH_BUFFER_BIT
    Glut.swap_buffers
  end

  def self.main
    argc = Int32.new 0
    Glut.init pointerof(argc), nil
    Glut.init_display_mode DOUBLE | RGB | DEPTH
    Glut.init_window_size 800, 600
    window = Glut.create_window("GLUT - Crystal");
    Glut.display_func ->render
    Glut.main_loop

    0
  end

  main
end
