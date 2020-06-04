


class Gravity  {
  static final int AXIS_PULL_BEFORE = 0x0002;
  static final int AXIS_PULL_AFTER = 0x0004;
  static int AXIS_SPECIFIED = 0x0001;
  /** Bits defining the horizontal axis. */
  static final int AXIS_X_SHIFT = 0;
  static int AXIS_Y_SHIFT = 4;
  static int CENTER_VERTICAL = 0x0001 << 4;
  static int CENTER_HORIZONTAL = 0x0001<<4;
  static final int CENTER = CENTER_VERTICAL|CENTER_HORIZONTAL;
  static final int TOP = (AXIS_PULL_BEFORE|AXIS_SPECIFIED)<<AXIS_Y_SHIFT;
  /** Push object to the bottom of its container, not changing its size. */
  static final int BOTTOM = (AXIS_PULL_AFTER|AXIS_SPECIFIED)<<AXIS_Y_SHIFT;
  /** Push object to the left of its container, not changing its size. */
  static final int LEFT = (AXIS_PULL_BEFORE|AXIS_SPECIFIED)<<AXIS_X_SHIFT;
  /** Push object to the right of its container, not changing its size. */
  static final int RIGHT = (AXIS_PULL_AFTER|AXIS_SPECIFIED)<<AXIS_X_SHIFT;
}

