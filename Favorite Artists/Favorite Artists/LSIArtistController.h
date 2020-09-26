//
//  LSIArtistController.h
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import <Foundation/Foundation.h>
#import "LSIArtist.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIArtistController : NSObject

//  Properties
@property NSMutableArray<LSIArtist *> *savedArtists;

//  Initializers
//  This initializer will basically create a new instance of the model controller and refresh its array with whatever data resides in the user's documents directory
- (instancetype)initAndRefreshArray;

//  Methods
- (void)saveArtist:(LSIArtist *)artist;

@end

NS_ASSUME_NONNULL_END
