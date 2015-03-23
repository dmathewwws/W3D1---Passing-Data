//
//  NextViewController.h
//  W3D1- AutoLayout-TextField
//
//  Created by Daniel Mathews on 2015-01-26.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface NextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nextLabel;


@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) User *user1;

@end
