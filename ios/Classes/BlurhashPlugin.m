#import "BlurhashPlugin.h"
#if __has_include(<blurhash/blurhash-Swift.h>)
#import <blurhash/blurhash-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "blurhash-Swift.h"
#endif

@implementation BlurhashPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBlurhashPlugin registerWithRegistrar:registrar];
}
@end
