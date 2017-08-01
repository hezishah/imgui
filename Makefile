# Makefile for library "external/imgui"
# 

include ../../makefile.defs

OBJECTS = imgui.o imgui_draw.o

.PHONY: all clean

all: libimgui.a

clean:
	$(RM) $(OBJECTS)
	$(RM) libimgui.a

libimgui.a: $(OBJECTS)
	touch libimgui.a
	rm libimgui.a
	$(AR) cq libimgui.a $(OBJECTS)
	$(RANLIB) libimgui.a

$(OBJECTS): *.h
