//
//  LoginViewController.m
//  navigatioin
//
//  Created by Nantawan Gantong on 11/9/18.
//  Copyright © 2018 Nantawan Gantong. All rights reserved.
//

#import "LoginViewController.h"
#import "MainNavigationController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    
    
    loginButton.readPermissions = @[@"public_profile", @"email"];
    
    
}

- (void) viewDidAppear:(BOOL)animated {
    
    if ([FBSDKAccessToken currentAccessToken]) {
        
        //link to another page
        
        [self performSegueWithIdentifier:@"linktoMain" sender:self];
        
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
