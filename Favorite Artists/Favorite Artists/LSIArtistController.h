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

///  Properties
@property NSMutableArray<LSIArtist *> *savedArtists;

///  Methods
- (void)reloadArray;
- (void)saveArtist:(LSIArtist *)artist;

///  Networking
- (LSIArtist *)fetchArtistWithSearchTerm:(NSString *)searchTerm;

@end

NS_ASSUME_NONNULL_END
