//
//  UIView+UIView_AutoLayoutDump.m
//
//  Created by _Zach on 9/3/14.
//  @zmcartor
//

#import "UIView+UIView_AutoLayoutDump.h"

@implementation UIView (UIView_AutoLayoutDump)

- (void)dumpConstraints {

    NSArray *NSLayoutConstantLookup = @[@"Not An Attribute", @"Left", @"Right", @"Top", @"Top", @"Bottom", @"Leading", @"Trailing", @"Width", @"Height", @"CenterX", @"CenterY", @"Baseline"];

    NSDictionary *NSLayoutRelationLookup = @{@-1 : @"<=" ,
                                      @0 : @"==",
                                      @1 : @">="
                                      };

    [self.constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *obj, NSUInteger idx, BOOL *stop) {

        NSString *firstItemClass = NSStringFromClass([obj.firstItem class]);
        NSString *secondItemClass = NSStringFromClass([obj.secondItem class]);

        NSLog(@"%@.%@ %@ %@.%@ :@%.0f \n", firstItemClass, NSLayoutConstantLookup[obj.firstAttribute], NSLayoutRelationLookup[@(obj.relation)], secondItemClass, NSLayoutConstantLookup[obj.secondAttribute], obj.priority);
    }];
}
@end
