//
//  ticketViewController.m
//  DreamWorld
//
//  Created by 6010 on 8/10/18.
//  Copyright © 2018 Nantawan Gantong. All rights reserved.
//

#import "ticketViewController.h"

@interface ticketViewController ()

@end

@implementation ticketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)step1click:(id)sender {
    //15
    self.lbl1.text = [NSString stringWithFormat:@"%0.0f", _step1.value];
    
}
- (IBAction)step2click:(id)sender {
    //18
    self.lbl2.text = [NSString stringWithFormat:@"%0.0f", _step2.value];
    
}
- (IBAction)step3click:(id)sender {
    //25
    self.lbl3.text = [NSString stringWithFormat:@"%0.0f", _step3.value];
    
}

- (IBAction)totalClick:(id)sender {
    
    float n1 = ([_lbl1.text floatValue]);
    float n2 = ([_lbl2.text floatValue]);
    float n3 = ([_lbl3.text floatValue]);
    
    float total = ([_total.text floatValue]);
    
    total = (n1*15)+(n2*18)+(n3*25);
    
    _total.text = [NSString stringWithFormat:@"%0.0f", total];
    
    
    
}
@end
