# Makefile for usbjoystick

COMPONENT = usbjoystick
TARGET = USBJoystick
CMHGAUTOHDR = ${TARGET}

CINCLUDES = -IOSLib:

LIBS = OSLib:o.OSLib32

OBJS = ${COMPONENT} usb debugrep parse data descr ukswiv

CMHGDEFINES     = -DCOMPONENT=${COMPONENT}
CMHGDEPENDS     =  usbjoystick
CMHGINCLUDES    = -IOSLib:

# Static dependency for CMHG-generated header
o.usbjoystick: h.usbjoystickHdr
o.usbhid:

include CModule

# Dynamic dependencies:
