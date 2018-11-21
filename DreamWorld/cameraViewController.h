//
//  cameraViewController.h
//  DreamWorld
//
//  Created by 6010 on 8/10/18.
//  Copyright © 2018 Nantawan Gantong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cameraViewController : UIViewController <UINavigationControllerDelegate , UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *albumImage;



@end
