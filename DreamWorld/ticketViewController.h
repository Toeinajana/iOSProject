//
//  ticketViewController.h
//  DreamWorld
//
//  Created by 6010 on 8/10/18.
//  Copyright © 2018 Nantawan Gantong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ticketViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UIStepper *step1;
- (IBAction)step1click:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;
@property (weak, nonatomic) IBOutlet UIStepper *step2;
- (IBAction)step2click:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lbl3;
@property (weak, nonatomic) IBOutlet UIStepper *step3;
- (IBAction)step3click:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *total;
- (IBAction)totalClick:(id)sender;

@end
