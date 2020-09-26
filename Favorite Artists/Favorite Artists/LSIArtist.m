//
//  LSIArtist.m
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import "LSIArtist.h"

@implementation LSIArtist

//  Initializers
- (instancetype)initWithName:(NSString *)name yearFormed:(NSNumber *)yearFormed biography:(NSString *)biography
{
    _name = name;
    _yearFormed = yearFormed;
    _biograpy = biography;
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *name = dictionary[@"strArtist"];
    NSNumber *yearFormed = dictionary[@"intFormedYear"];
    NSString *biography = dictionary[@"strBiographyEN"];
    
    LSIArtist *newArtist = [[LSIArtist alloc] initWithName:name yearFormed:yearFormed biography:biography];
    return newArtist;
}

@end
