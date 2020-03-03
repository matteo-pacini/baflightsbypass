#include <mach-o/dyld.h>

%hook JailBrokeManager

+ (BOOL)accessOutsideSandbox {
	%log;
	return NO;
}

%end

int (*sub_10002e724)(void) = NULL;

int new_sub_10002e724() {
	return 0x0;
}

%ctor {
	unsigned long ptr = _dyld_get_image_vmaddr_slide(0) + 0x10002e724;
	MSHookFunction((void *)ptr,
				   (void *)new_sub_10002e724,
				   (void **)&sub_10002e724);
}
