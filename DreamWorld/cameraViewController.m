//
//  cameraViewController.m
//  DreamWorld
//
//  Created by 6010 on 8/10/18.
//  Copyright © 2018 Nantawan Gantong. All rights reserved.
//

#import "cameraViewController.h"
#import <Photos/Photos.h>

@interface cameraViewController ()


@end

@implementation cameraViewController


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


- (IBAction)openCameraView:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera]){
        UIImagePickerController *pickerConrtroller = [[UIImagePickerController alloc]init];
        pickerConrtroller.delegate = self;
        [pickerConrtroller setSourceType:UIImagePickerControllerSourceTypeCamera];
        pickerConrtroller.allowsEditing = YES;
        [self presentViewController:pickerConrtroller animated:YES completion:nil];

        
    }
    
    else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"Your device doesn't have camera!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){}];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    
    
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (NSString *)getDocumentsDirectory {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    return [paths objectAtIndex:0];
    
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker didFinishPickingMediaWithInfo: (NSDictionary<NSString *, id> *) info {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *image = info[UIImagePickerControllerEditedImage];
    self.albumImage.image = image;
    
    
    
    /*UIImage* image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    
    [UIImagePNGRepresentation(image) writeToFile:[[self getDocumentsDirectory] stringByAppendingFormat:@"/nameofthefile"] atomically:YES];
    
    
    
    image = [UIImage imageWithContentsOfFile:[[self getDocumentsDirectory] stringByAppendingFormat:@"/nameofthefile"]];
    
    
    
    [picker dismissViewControllerAnimated:YES completion:nil];*/
    
    
    
    //UIImage* image;
    
    //obtaining saving path
   /* NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *imagePath = [documentsDirectory stringByAppendingPathComponent:@"latest_photo.png"];
    
    //extracting image from the picker and saving it
    NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
    if ([mediaType isEqualToString:@"public.image"]){
        UIImage *editedImage = [info objectForKey:UIImagePickerControllerEditedImage];
        NSData *webData = UIImagePNGRepresentation(editedImage);
        [webData writeToFile:imagePath atomically:YES];
    }*/
    
    
    
    
    /*if([[info valueForKey:@"UIImagePickerControllerMediaType"] isEqualToString:@"public.image"])
    {
        
        image = [info valueForKey:UIImagePickerControllerOriginalImage];
        
        NSString *stringPath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0]stringByAppendingPathComponent:@"Dream World"];
        
        // New Folder is your folder name
        
        NSError *error = nil;
        
        if (![[NSFileManager defaultManager] fileExistsAtPath:stringPath])
            [[NSFileManager defaultManager] createDirectoryAtPath:stringPath withIntermediateDirectories:NO attributes:nil error:&error];
        
        NSString *fileName = [stringPath stringByAppendingFormat:@"/image.jpg"];
        
        NSData *data = UIImageJPEGRepresentation(image, 1.0);
        
        [data writeToFile:fileName atomically:YES];
        
    }*/

}
















@end
