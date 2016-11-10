module GLUT
  alias GLenum = UInt32
  alias GLint = Int32
  alias GLfloat = Float32
  alias GLdouble = Float64

  # GLUT API macro definitions -- the special key codes:
  KEY_F1                        = 0x0001
  KEY_F2                        = 0x0002
  KEY_F3                        = 0x0003
  KEY_F4                        = 0x0004
  KEY_F5                        = 0x0005
  KEY_F6                        = 0x0006
  KEY_F7                        = 0x0007
  KEY_F8                        = 0x0008
  KEY_F9                        = 0x0009
  KEY_F10                       = 0x000A
  KEY_F11                       = 0x000B
  KEY_F12                       = 0x000C
  KEY_LEFT                      = 0x0064
  KEY_UP                        = 0x0065
  KEY_RIGHT                     = 0x0066
  KEY_DOWN                      = 0x0067
  KEY_PAGE_UP                   = 0x0068
  KEY_PAGE_DOWN                 = 0x0069
  KEY_HOME                      = 0x006A
  KEY_END                       = 0x006B
  KEY_INSERT                    = 0x006C

  # GLUT API macro definitions -- mouse state definitions
  LEFT_BUTTON                   = 0x0000
  MIDDLE_BUTTON                 = 0x0001
  RIGHT_BUTTON                  = 0x0002
  DOWN                          = 0x0000
  UP                            = 0x0001
  LEFT                          = 0x0000
  ENTERED                       = 0x0001

  # GLUT API macro definitions -- the display mode definitions
  RGB                           = 0x0000
  RGBA                          = 0x0000
  INDEX                         = 0x0001
  SINGLE                        = 0x0000
  DOUBLE                        = 0x0002
  ACCUM                         = 0x0004
  ALPHA                         = 0x0008
  DEPTH                         = 0x0010
  STENCIL                       = 0x0020
  MULTISAMPLE                   = 0x0080
  STEREO                        = 0x0100
  LUMINANCE                     = 0x0200

  # GLUT API macro definitions -- windows and menu related definitions
  MENU_NOT_IN_USE               = 0x0000
  MENU_IN_USE                   = 0x0001
  NOT_VISIBLE                   = 0x0000
  VISIBLE                       = 0x0001
  HIDDEN                        = 0x0000
  FULLY_RETAINED                = 0x0001
  PARTIALLY_RETAINED            = 0x0002
  FULLY_COVERED                 = 0x0003

  # GLUT API macro definitions -- the glutGet parameters
  WINDOW_X                      = 0x0064
  WINDOW_Y                      = 0x0065
  WINDOW_WIDTH                  = 0x0066
  WINDOW_HEIGHT                 = 0x0067
  WINDOW_BUFFER_SIZE            = 0x0068
  WINDOW_STENCIL_SIZE           = 0x0069
  WINDOW_DEPTH_SIZE             = 0x006A
  WINDOW_RED_SIZE               = 0x006B
  WINDOW_GREEN_SIZE             = 0x006C
  WINDOW_BLUE_SIZE              = 0x006D
  WINDOW_ALPHA_SIZE             = 0x006E
  WINDOW_ACCUM_RED_SIZE         = 0x006F
  WINDOW_ACCUM_GREEN_SIZE       = 0x0070
  WINDOW_ACCUM_BLUE_SIZE        = 0x0071
  WINDOW_ACCUM_ALPHA_SIZE       = 0x0072
  WINDOW_DOUBLEBUFFER           = 0x0073
  WINDOW_RGBA                   = 0x0074
  WINDOW_PARENT                 = 0x0075
  WINDOW_NUM_CHILDREN           = 0x0076
  WINDOW_COLORMAP_SIZE          = 0x0077
  WINDOW_NUM_SAMPLES            = 0x0078
  WINDOW_STEREO                 = 0x0079
  WINDOW_CURSOR                 = 0x007A

  SCREEN_WIDTH                  = 0x00C8
  SCREEN_HEIGHT                 = 0x00C9
  SCREEN_WIDTH_MM               = 0x00CA
  SCREEN_HEIGHT_MM              = 0x00CB
  MENU_NUM_ITEMS                = 0x012C
  DISPLAY_MODE_POSSIBLE         = 0x0190
  INIT_WINDOW_X                 = 0x01F4
  INIT_WINDOW_Y                 = 0x01F5
  INIT_WINDOW_WIDTH             = 0x01F6
  INIT_WINDOW_HEIGHT            = 0x01F7
  INIT_DISPLAY_MODE             = 0x01F8
  ELAPSED_TIME                  = 0x02BC
  WINDOW_FORMAT_ID              = 0x007B

  # GLUT API macro definitions -- the glutDeviceGet parameters
  HAS_KEYBOARD                  = 0x0258
  HAS_MOUSE                     = 0x0259
  HAS_SPACEBALL                 = 0x025A
  HAS_DIAL_AND_BUTTON_BOX       = 0x025B
  HAS_TABLET                    = 0x025C
  NUM_MOUSE_BUTTONS             = 0x025D
  NUM_SPACEBALL_BUTTONS         = 0x025E
  NUM_BUTTON_BOX_BUTTONS        = 0x025F
  NUM_DIALS                     = 0x0260
  NUM_TABLET_BUTTONS            = 0x0261
  DEVICE_IGNORE_KEY_REPEAT      = 0x0262
  DEVICE_KEY_REPEAT             = 0x0263
  HAS_JOYSTICK                  = 0x0264
  OWNS_JOYSTICK                 = 0x0265
  JOYSTICK_BUTTONS              = 0x0266
  JOYSTICK_AXES                 = 0x0267
  JOYSTICK_POLL_RATE            = 0x0268

  # GLUT API macro definitions -- the glutLayerGet parameters
  OVERLAY_POSSIBLE              = 0x0320
  LAYER_IN_USE                  = 0x0321
  HAS_OVERLAY                   = 0x0322
  TRANSPARENT_INDEX             = 0x0323
  NORMAL_DAMAGED                = 0x0324
  OVERLAY_DAMAGED               = 0x0325

  # GLUT API macro definitions -- the glutVideoResizeGet parameters
  VIDEO_RESIZE_POSSIBLE         = 0x0384
  VIDEO_RESIZE_IN_USE           = 0x0385
  VIDEO_RESIZE_X_DELTA          = 0x0386
  VIDEO_RESIZE_Y_DELTA          = 0x0387
  VIDEO_RESIZE_WIDTH_DELTA      = 0x0388
  VIDEO_RESIZE_HEIGHT_DELTA     = 0x0389
  VIDEO_RESIZE_X                = 0x038A
  VIDEO_RESIZE_Y                = 0x038B
  VIDEO_RESIZE_WIDTH            = 0x038C
  VIDEO_RESIZE_HEIGHT           = 0x038D

  # GLUT API macro definitions -- the glutUseLayer parameters
  NORMAL                        = 0x0000
  OVERLAY                       = 0x0001

  # GLUT API macro definitions -- the glutGetModifiers parameters
  ACTIVE_SHIFT                  = 0x0001
  ACTIVE_CTRL                   = 0x0002
  ACTIVE_ALT                    = 0x0004

  # GLUT API macro definitions -- the glutSetCursor parameters
  CURSOR_RIGHT_ARROW            = 0x0000
  CURSOR_LEFT_ARROW             = 0x0001
  CURSOR_INFO                   = 0x0002
  CURSOR_DESTROY                = 0x0003
  CURSOR_HELP                   = 0x0004
  CURSOR_CYCLE                  = 0x0005
  CURSOR_SPRAY                  = 0x0006
  CURSOR_WAIT                   = 0x0007
  CURSOR_TEXT                   = 0x0008
  CURSOR_CROSSHAIR              = 0x0009
  CURSOR_UP_DOWN                = 0x000A
  CURSOR_LEFT_RIGHT             = 0x000B
  CURSOR_TOP_SIDE               = 0x000C
  CURSOR_BOTTOM_SIDE            = 0x000D
  CURSOR_LEFT_SIDE              = 0x000E
  CURSOR_RIGHT_SIDE             = 0x000F
  CURSOR_TOP_LEFT_CORNER        = 0x0010
  CURSOR_TOP_RIGHT_CORNER       = 0x0011
  CURSOR_BOTTOM_RIGHT_CORNER    = 0x0012
  CURSOR_BOTTOM_LEFT_CORNER     = 0x0013
  CURSOR_INHERIT                = 0x0064
  CURSOR_NONE                   = 0x0065
  CURSOR_FULL_CROSSHAIR         = 0x0066

  # GLUT API macro definitions -- RGB color component specification definitions
  RED                           = 0x0000
  GREEN                         = 0x0001
  BLUE                          = 0x0002

  # GLUT API macro definitions -- additional keyboard and joystick definitions
  KEY_REPEAT_OFF                = 0x0000
  KEY_REPEAT_ON                 = 0x0001
  KEY_REPEAT_DEFAULT            = 0x0002

  JOYSTICK_BUTTON_A             = 0x0001
  JOYSTICK_BUTTON_B             = 0x0002
  JOYSTICK_BUTTON_C             = 0x0004
  JOYSTICK_BUTTON_D             = 0x0008

  # GLUT API macro definitions -- game mode definitions
  GAME_MODE_ACTIVE              = 0x0000
  GAME_MODE_POSSIBLE            = 0x0001
  GAME_MODE_WIDTH               = 0x0002
  GAME_MODE_HEIGHT              = 0x0003
  GAME_MODE_PIXEL_DEPTH         = 0x0004
  GAME_MODE_REFRESH_RATE        = 0x0005
  GAME_MODE_DISPLAY_CHANGED     = 0x0006

  @[Link("glut")]
  lib Glut
    # Initialization functions, see fglut_init.c
    fun init = glutInit(pargc : Int32*, argv: UInt8**) : Void
    fun init_window_position = glutInitWindowPosition(x : Int32, y : Int32) : Void
    fun init_window_size = glutInitWindowSize(width : Int32, height : Int32) : Void
    fun init_display_mode = glutInitDisplayMode(displayMode : UInt32) : Void
    fun init_display_string = glutInitDisplayString(displayMode : UInt8*) : Void

    # Process loop function, see freeglut_main.c
    fun main_loop = glutMainLoop() : Void

    # Window management functions, see freeglut_window.c
    fun create_window = glutCreateWindow(title : UInt8*) : Int32
    fun create_sub_window = glutCreateSubWindow(window : Int32, x : Int32, y : Int32, width : Int32, height : Int32) : Int32
    fun destroy_window = glutDestroyWindow(window : Int32) : Void
    fun set_window = glutSetWindow(window : Int32) : Void
    fun get_window = glutGetWindow() : Int32
    fun set_window_title = glutSetWindowTitle(title : UInt8*) : Void
    fun set_icon_title = glutSetIconTitle(title : UInt8*) : Void
    fun reshape_window = glutReshapeWindow(width : Int32, height : Int32) : Void
    fun position_window = glutPositionWindow(x : Int32, y : Int32) : Void
    fun show_window = glutShowWindow() : Void
    fun hide_window = glutHideWindow() : Void
    fun iconify_window = glutIconifyWindow() : Void
    fun push_window = glutPushWindow() : Void
    fun pop_window = glutPopWindow() : Void
    fun full_screen = glutFullScreen() : Void

    # Display-connected functions, see freeglut_display.c
    fun post_window_redisplay = glutPostWindowRedisplay(window : Int32) : Void
    fun post_redisplay = glutPostRedisplay() : Void
    fun swap_buffers = glutSwapBuffers() : Void

    # Mouse cursor functions, see freeglut_cursor.c
    fun warp_pointer = glutWarpPointer(x : Int32, y : Int32) : Void
    fun set_cursor = glutSetCursor(cursor : Int32) : Void

    # Overlay stuff, see freeglut_overlay.c
    fun establish_overlay = glutEstablishOverlay( ) : Void
    fun remove_overlay = glutRemoveOverlay() : Void
    fun use_layer = glutUseLayer(layer : GLenum) : Void
    fun post_overlay_redisplay = glutPostOverlayRedisplay() : Void
    fun post_window_overlay_redisplay = glutPostWindowOverlayRedisplay(window : Int32) : Void
    fun show_overlay = glutShowOverlay() : Void
    fun hide_overlay = glutHideOverlay() : Void

    # Menu stuff, see freeglut_menu.c
    fun create_menu = glutCreateMenu(callback : Int32 -> Void) : Int32
    fun destroy_menu = glutDestroyMenu(menu : Int32) : Void
    fun get_menu = glutGetMenu() : Int32
    fun set_menu = glutSetMenu(menu : Int32) : Void
    fun add_menu_entry = glutAddMenuEntry(label : UInt8*, value : Int32) : Void
    fun add_sub_menu = glutAddSubMenu(label : UInt8*, subMenu : Int32) : Void
    fun change_to_menu_entry = glutChangeToMenuEntry(item : Int32, label : UInt8*, value : Int32) : Void
    fun change_to_sub_menu = glutChangeToSubMenu(item : Int32, label : UInt8*, value : Int32) : Void
    fun remove_menu_item = glutRemoveMenuItem(item : Int32) : Void
    fun attach_menu = glutAttachMenu(button : Int32) : Void
    fun detach_menu = glutDetachMenu(button : Int32) : Void

    # Global callback functions, see freeglut_callbacks.c
    fun timer_func = glutTimerFunc(time : UInt32, callback : Int32 -> Void, value : Int32) : Void
    fun idle_func = glutIdleFunc(callback: -> Void) : Void

    # Window-specific callback functions, see freeglut_callbacks.c
    fun keyboard_func = glutKeyboardFunc(callback : UInt8, Int32, Int32 -> Void) : Void
    fun special_func = glutSpecialFunc(callback : Int32, Int32, Int32 -> Void) : Void
    fun reshape_func = glutReshapeFunc(callback : Int32, Int32 -> Void) : Void
    fun visibility_func = glutVisibilityFunc(callback : Int32 -> Void) : Void
    fun display_func = glutDisplayFunc(callback : -> Void) : Void
    fun mouse_func = glutMouseFunc(callback : Int32, Int32, Int32, Int32 -> Void) : Void
    fun motion_func = glutMotionFunc( callback : Int32, Int32 -> Void) : Void
    fun passive_motion_func = glutPassiveMotionFunc(callback : Int32, Int32 -> Void) : Void
    fun entry_func = glutEntryFunc(callback : Int32 -> Void) : Void

    fun keyboard_up_func = glutKeyboardUpFunc(callback : UInt8, Int32, Int32 -> Void) : Void
    fun special_up_func = glutSpecialUpFunc(callback : Int32, Int32, Int32 -> Void) : Void
    fun joystick_func = glutJoystickFunc(callback : UInt32, Int32, Int32, Int32 -> Void, poll_interval : Int32) : Void
    fun menu_state_func = glutMenuStateFunc(callback : Int32 -> Void) : Void
    fun menu_status_func = glutMenuStatusFunc(callback : Int32, Int32, Int32 -> Void) : Void
    fun overlay_display_func = glutOverlayDisplayFunc(callback : -> Void) : Void
    fun window_status_func = glutWindowStatusFunc(callback : Int32 -> Void) : Void

    fun spaceball_motion_func = glutSpaceballMotionFunc(callback : Int32, Int32, Int32 -> Void) : Void
    fun spaceball_rotate_func = glutSpaceballRotateFunc(callback : Int32, Int32, Int32 -> Void) : Void
    fun spaceball_button_func = glutSpaceballButtonFunc(callback : Int32, Int32 -> Void) : Void
    fun button_box_func = glutButtonBoxFunc(callback : Int32, Int32 -> Void) : Void
    fun dials_func = glutDialsFunc(callback : Int32, Int32 -> Void) : Void
    fun tablet_motion_func = glutTabletMotionFunc(callback : Int32, Int32 -> Void) : Void
    fun tablet_button_func = glutTabletButtonFunc(callback : Int32, Int32, Int32, Int32 -> Void) : Void

    # State setting and retrieval functions, see freeglut_state.c
    fun get = glutGet(query : GLenum) : Int32
    fun device_get = glutDeviceGet(query : GLenum) : Int32
    fun get_modifiers = glutGetModifiers() : Int32
    fun layer_get = glutLayerGet(query : GLenum) : Int32

    # Font stuff, see freeglut_font.c
    fun bitmap_character = glutBitmapCharacter(font : Void*, character : Int32) : Void
    fun bitmap_width = glutBitmapWidth(font : Void*, character : Int32) : Int32
    fun stroke_character = glutStrokeCharacter(font : Void*, character : Int32) : Void
    fun stroke_width = glutStrokeWidth(font : Void*, character : Int32) : Int32
    fun bitmap_length = glutBitmapLength(font : Void*, string : UInt8*) : Int32
    fun stroke_length = glutStrokeLength(font : Void*, string : UInt8*) : Int32

    # Geometry functions, see freeglut_geometry.c
    fun wire_cube = glutWireCube(size : GLdouble) : Void
    fun solid_cube = glutSolidCube(size : GLdouble) : Void
    fun wire_sphere = glutWireSphere(radius : GLdouble, slices : GLint, stacks : GLint) : Void
    fun solid_sphere = glutSolidSphere(radius : GLdouble, slices : GLint, stacks : GLint) : Void
    fun wire_cone = glutWireCone(base : GLdouble, height : GLdouble, slices : GLint, stacks : GLint) : Void
    fun solid_cone = glutSolidCone(base : GLdouble, height : GLdouble, slices : GLint, stacks : GLint) : Void

    fun wire_torus = glutWireTorus(innerRadius : GLdouble, outerRadius : GLdouble, sides : GLint, rings : GLint) : Void
    fun solid_torus = glutSolidTorus(innerRadius : GLdouble, outerRadius : GLdouble, sides : GLint, rings : GLint) : Void
    fun wire_dodecahedron = glutWireDodecahedron() : Void
    fun solid_dodecahedron = glutSolidDodecahedron() : Void
    fun wire_octahedron = glutWireOctahedron() : Void
    fun solid_octahedron = glutSolidOctahedron() : Void
    fun wire_tetrahedron = glutWireTetrahedron() : Void
    fun solid_tetrahedron = glutSolidTetrahedron() : Void
    fun wire_icosahedron = glutWireIcosahedron() : Void
    fun solid_icosahedron = glutSolidIcosahedron() : Void

    # Teapot rendering functions, found in freeglut_teapot.c
    # NB: front facing polygons have clockwise winding, not counter clockwise
    fun wire_teapot = glutWireTeapot(size : GLdouble) : Void
    fun solid_teapot = glutSolidTeapot(size : GLdouble) : Void

    # Game mode functions, see freeglut_gamemode.c
    fun game_mode_string = glutGameModeString(string : UInt8*) : Void
    fun enter_game_mode = glutEnterGameMode() : Int32
    fun leave_game_mode = glutLeaveGameMode() : Void
    fun game_mode_get = glutGameModeGet(query : GLenum) : Int32

    # Video resize functions, see freeglut_videoresize.c
    fun video_resize_get = glutVideoResizeGet(query : GLenum) : Int32
    fun setup_video_resizing = glutSetupVideoResizing() : Void
    fun stop_video_resizing = glutStopVideoResizing() : Void
    fun video_resize = glutVideoResize(x : Int32, y : Int32, width : Int32, height : Int32) : Void
    fun video_pan = glutVideoPan(x : Int32, y : Int32, width : Int32, height : Int32) : Void

    # Colormap functions, see freeglut_misc.c
    fun set_color = glutSetColor(color : Int32, red : GLfloat, green : GLfloat, blue : GLfloat) : Void
    fun get_color = glutGetColor(color : Int32, component : Int32);
    fun copy_colormap = glutCopyColormap(window : Int32) : Void

    # Misc keyboard and joystick functions, see freeglut_misc.c
    fun ignore_key_repeat = glutIgnoreKeyRepeat(ignore : Int32) : Void
    fun set_key_repeat = glutSetKeyRepeat(repeatMode : Int32) : Void
    fun force_joystick_func = glutForceJoystickFunc() : Void

    # Misc functions, see freeglut_misc.c
    fun extension_supported = glutExtensionSupported(extension : UInt8*) : Int32
    fun report_errors = glutReportErrors() : Void
  end # lib Glut
end #module GLUT
