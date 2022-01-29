#import "MediaToolkitPlugin.h"
#if __has_include(<media_toolkit/media_toolkit-Swift.h>)
#import <media_toolkit/media_toolkit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "media_toolkit-Swift.h"
#endif

@implementation MediaToolkitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMediaToolkitPlugin registerWithRegistrar:registrar];
}
@end
