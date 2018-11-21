//
//  profileViewController.m
//  DreamWorld
//
//  Created by 6010 on 8/10/18.
//  Copyright © 2018 Nantawan Gantong. All rights reserved.
//

#import "profileViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface profileViewController ()

@end

@implementation profileViewController

    
    - (void)viewDidLoad {
        [super viewDidLoad];
        
    }
- (IBAction)logoutFb:(id)sender {
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
 
    [login logOut];
    
    
    
    if (![FBSDKAccessToken currentAccessToken]) {
        
        //link to another page
        
        [self performSegueWithIdentifier:@"linktoMain2" sender:self];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
