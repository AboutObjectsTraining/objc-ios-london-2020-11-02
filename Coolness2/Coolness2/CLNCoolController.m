// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIView *contentView;
@end

@implementation CLNCoolController

- (IBAction)addCell {
    NSLog(@"In %s, text is %@", __func__, self.textField.text);
    CLNCoolViewCell *cell = [[CLNCoolViewCell alloc] init];
    cell.text = self.textField.text;
    cell.backgroundColor = UIColor.systemBlueColor;
    [self.contentView addSubview:cell];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"In %s", __func__);
    [textField resignFirstResponder];
    return YES;
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"In %s", __func__);
//    [super touchesBegan:touches withEvent:event];
//}
//
//- (void)loadView1 {
//    [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:self options:nil];
//}
//
//- (void)loadView2 {
//    NSArray *topLevelObjs = [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:nil options:nil];
//    self.view = topLevelObjs.firstObject;
//}

@end
