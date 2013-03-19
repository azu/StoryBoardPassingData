//
//  Created by azu on 12/08/29.
//


#import <Foundation/Foundation.h>

/*  Set ViewController Identifier at InterfaceBuilder
    // https://img.skitch.com/20121013-x77ugfbxnyy8cnigqxy75aqbx1.jpg
    ViewController *viewController;
    viewController = [self.storyboard instanceWithClass:[ViewController class]];
    [self.navigationController pushViewController:viewController animated:YES];
 */
@interface UIStoryboard (InstanceViewControllerClass)

- (id)instanceWithClass:(id) Class;

@end