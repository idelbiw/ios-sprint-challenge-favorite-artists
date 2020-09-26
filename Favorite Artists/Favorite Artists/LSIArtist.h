//
//  LSIArtist.h
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIArtist : NSObject

/// Properties
@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *yearFormed;
@property (nonatomic) NSString *biograpy;

///  Initializers
- (instancetype)initWithName:(NSString *)name
                    yearFormed:(NSNumber *)yearFormed
                   biography:(NSString *)biography;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (instancetype)initWithDecodedDictionary:(NSDictionary *)dictionary;

///  Methods
- (NSDictionary *)returnDictionary;

@end

NS_ASSUME_NONNULL_END
