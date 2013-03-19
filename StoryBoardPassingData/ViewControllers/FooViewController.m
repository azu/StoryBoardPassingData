//
//  FooViewController.m
//  StoryBoardPassingData
//
//  Created by azu on 03/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "FooViewController.h"
#import "BarViewController.h"
#import "UIStoryboard+InstanceViewControllerClass.h"

@interface FooViewController ()

@end

@implementation FooViewController

- (id)initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *) nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Push ボタンを押した時の挙動
- (IBAction)handlePushButton:(UIButton *) sender {
    BarViewController *barViewController = [self.storyboard instanceWithClass:[BarViewController class]];
    barViewController.receiveString = @"Pushボタンより渡された値";
    [self.navigationController pushViewController:barViewController animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *) segue sender:(id) sender {

    if ([[segue identifier] isEqualToString:@"FooToBar"]) {
        BarViewController *barViewController = segue.destinationViewController;
        barViewController.receiveString = @"Segueより渡された値";
    }
}
@end
