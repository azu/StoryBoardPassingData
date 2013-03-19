//
//  Created by azu on 12/08/29.
//


#import "UIStoryboard+InstanceViewControllerClass.h"


@implementation UIStoryboard (InstanceViewControllerClass)

- (id)instanceWithClass:(id) ViewControllerClass {
    NSCParameterAssert(ViewControllerClass);
    NSString *identifier = NSStringFromClass(ViewControllerClass);
    return [self instantiateViewControllerWithIdentifier:identifier];
}


@end