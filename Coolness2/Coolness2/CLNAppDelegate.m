// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNAppDelegate.h"
#import "CLNCoolController.h"

@implementation CLNAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    self.window = [[UIWindow alloc] init];
    NSLog(@"In %s, window is %@", __func__, self.window);
    self.window.backgroundColor = UIColor.systemYellowColor;
    self.window.rootViewController = [[CLNCoolController alloc] initWithNibName:@"CoolStuff" bundle:nil];
    
    [self.window makeKeyAndVisible];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"In %s", __func__);
}

//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = touches.anyObject;
//    CGPoint currLocation = [touch locationInView:nil];
//    CGPoint prevLocation = [touch previousLocationInView:nil];
//
//    CGFloat dx = currLocation.x - prevLocation.x;
//    CGFloat dy = currLocation.y - prevLocation.y;
//
//    touches.anyObject.view.frame = CGRectOffset(touches.anyObject.view.frame, dx, dy);
//}

@end
