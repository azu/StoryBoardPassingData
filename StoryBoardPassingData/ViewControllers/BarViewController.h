//
//  FooViewController.h
//  StoryBoardPassingData
//
//  Created by azu on 03/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//



@interface BarViewController : UIViewController

@property(weak, nonatomic) IBOutlet UILabel *resultLabel;
@property(strong, nonatomic) NSString *receiveString;
@end
