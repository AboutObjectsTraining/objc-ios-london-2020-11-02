// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <Peeps/Peeps.h>

@interface PersonTests : XCTestCase
@end

@implementation PersonTests

- (void)testFirstName {
    Person *fred = [[Person alloc] init];
    [fred setFirstName:@"Fred"];
    
    NSString *name = [fred firstName];
    NSLog(@"\n\n**** Name is %@ ****\n", name);
}

- (void)testAllProperties {
    Person *fred = [[Person alloc] init];
    [fred setFirstName:@"Fred"];
    [fred setLastName:@"Smythe"];
    [fred setAge:33];
    
    NSLog(@"%@", fred);
    
    Person *bob = nil;
    [bob setFirstName:@"Bob"];
    NSLog(@"%@", bob);
}

- (void)testInitializer {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred" lastName:@"Smith"];
    NSLog(@"%@", fred);
    
    Person *bob = [[Person alloc] initWithFirstName:@"Bob" lastName:@"James" age:28];
    NSLog(@"%@", bob);
}

- (void)testBarkingDog {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred" lastName:@"Smith"];
    Dog *rover = [[Dog alloc] init];
    [fred setDog:rover];
    
    [(id)fred bark];
}

@end
