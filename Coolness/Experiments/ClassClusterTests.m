// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface ClassClusterTests : XCTestCase
@end

@implementation ClassClusterTests

- (void)testStrings {
    NSString *s1 = [NSString alloc];
    NSString *s2 = [NSString alloc];
    
    NSString *s3 = [s1 initWithFormat:@"%@ %@", @"Hello", @"World!"];
    
    NSMutableString *s4 = [NSMutableString alloc];
    
    NSMutableString *s5 = [s4 initWithString:@"Foo"];
    
    NSString *s6 = [[NSString alloc] initWithString:@"Foo"];
    
    NSLog(@"%@", s3);
//    NSLog(@"%@", s2);
}

- (void)testArrays {
    NSArray *a1 = [NSArray alloc];
    NSMutableArray *a2 = [NSMutableArray alloc];
    
    NSArray *a3 = [a1 initWithObjects:@1, @2, nil];
    NSMutableArray *a4 = [a2 initWithObjects:@3, @4, nil];
    
    NSLog(@"%@", a3);
}

@end
