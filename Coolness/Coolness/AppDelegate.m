// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "AppDelegate.h"
#import "CLNCoolController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    self.window = [[UIWindow alloc] init];
    NSLog(@"In %s, window is %@", __func__, self.window);
    self.window.backgroundColor = UIColor.systemYellowColor;
    self.window.rootViewController = [[CLNCoolController alloc] init];
    
    [self.window makeKeyAndVisible];
}


@end
