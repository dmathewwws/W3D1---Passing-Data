//
//  ViewController.m
//  W3D1- AutoLayout-TextField
//
//  Created by Daniel Mathews on 2015-01-25.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "User.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ySumitContraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateViewConstraints {
    [super updateViewConstraints];
    self.ySumitContraint.constant = ([UIScreen mainScreen].bounds.size.height > 480.0f) ? 0 : 50;
    
//    NSLog(@"%f = [UIScreen mainScreen].bounds.size.height",[UIScreen mainScreen].bounds.size.height);
//    NSLog(@"%f = [UIScreen mainScreen].bounds.size.width",[UIScreen mainScreen].bounds.size.width);

}

-(void) prepareForSegue:(UIStoryboardPopoverSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showNextVC"]) {
        //The segue is to the a View Controller called NextViewController
        NextViewController *nvc =  (NextViewController  *) segue.destinationViewController;

        
        NSString *str = self.usernameTextField.text;
        
        User *u = [[User alloc] init];
        u.username = self.usernameTextField.text;
        nvc.user1 = u;
        nvc.username = str;
        
        //NSLog(@"self.usernameTextField.text is %@", self.usernameTextField.text);
    }
}


@end
