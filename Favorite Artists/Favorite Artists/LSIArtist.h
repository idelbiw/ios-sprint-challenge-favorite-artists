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
@property NSString *FormedIn;
@property NSString *biograpy;

//  Initializers
- (instancetype)initWithName:(NSString *)name
                    formedIn:(NSString *)formedIn
                   biography:(NSString *)biography;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
