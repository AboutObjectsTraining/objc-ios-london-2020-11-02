#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_firstName;
    NSString *_lastName;
    int _age;
}

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                              age:(int)age;

+ (instancetype)personWithFirstName:(NSString *)firstName
                           lastName:(NSString *)lastName
                                age:(int)age;

- (NSString *)firstName;
- (void)setFirstName:(NSString *)newValue;

- (NSString *)lastName;
- (void)setLastName:(NSString *)newValue;

- (int)age;
- (void)setAge:(int)newValue;

//// Part 2
- (NSString *)fullName;
////

//// Part 3
- (void)display;
////

@end


//// Part 4
@interface Person ()
{
    NSUInteger _rating;
}

- (NSUInteger)rating;
- (void)setRating:(NSUInteger)newValue;

- (NSString *)ratingStars;

@end
////

