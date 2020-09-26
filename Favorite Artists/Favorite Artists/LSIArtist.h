//
//  LSIArtist.h
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIArtist : NSObject

// Properties
@property NSString *name;
@property NSNumber *yearFormed;
@property NSString *biograpy;

//  Initializers
- (instancetype)initWithName:(NSString *)name
                    yearFormed:(NSNumber *)yearFormed
                   biography:(NSString *)biography;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
