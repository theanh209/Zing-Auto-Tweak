#import <UIKit/UIKit.h>
#import <MetalKit/MetalKit.h>

@interface ImGuiDrawView : UIViewController <MTKViewDelegate>
+ (void)showChange:(BOOL)open;
+ (BOOL)isMenuShowing;
- (void)updateIOWithTouchEvent:(UIEvent *)event; 
@end
