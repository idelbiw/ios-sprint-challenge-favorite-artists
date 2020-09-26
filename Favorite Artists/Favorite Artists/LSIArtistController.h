//
//  LSIArtistController.h
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import <Foundation/Foundation.h>
#import "LSIArtist.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^ArtistFetcherCompletionHandler)(LSIArtist *_Nullable artist, NSError *_Nullable error);

@interface LSIArtistController : NSObject

///  Properties
@property (nonatomic) NSMutableArray<LSIArtist *> *savedArtists;

///  Methods
- (void)reloadArray;
- (void)saveArtist:(LSIArtist *)artist;

///  Networking
- (void)fetchArtistWithSearchTerm:(NSString *)searchTerm completionHandler:(ArtistFetcherCompletionHandler)completionHandler;

@end

NS_ASSUME_NONNULL_END
