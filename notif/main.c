#include <CoreFoundation/CoreFoundation.h>

int main (int argc, char ** argv) {
    CFMessagePortRef port = CFMessagePortCreateRemote(NULL, CFSTR("com.apple.loginwindow.notify"));
    CFMessagePortSendRequest(port, 500, 0, 0, 0, 0, 0);
    CFRelease(port);
    return 0;
}