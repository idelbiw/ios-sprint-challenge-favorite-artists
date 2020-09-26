//
//  LSIArtistController.m
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import "LSIArtistController.h"

@implementation LSIArtistController

//  Methods
- (void)reloadArray {
    
    _savedArtists = [[NSMutableArray alloc] initWithArray:@[]];
    NSData *data = [NSData dataWithContentsOfURL:[self documentsURL]];
    if (!data) {
        NSLog(@"ERROR: Data not found!");
    }
    
    NSError *error = nil;
    NSArray *artistsDictinariesArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error) {
        NSLog(@"ERROR: Could not convert JSON into dictionary array! %@", error);
    }
    
    NSMutableArray *artistsArray = [[NSMutableArray alloc] init];
    for (NSDictionary *artistDictionary in artistsDictinariesArray) {
        LSIArtist *fetchedArtist = [[LSIArtist alloc] initWithDictionary:artistDictionary];
        [artistsArray addObject:fetchedArtist];
    }
    _savedArtists = artistsArray;
}

- (void)saveArtist:(LSIArtist *)artist {
    
    [_savedArtists addObject:artist];
    NSMutableArray *artistsDictinariesArray = [[NSMutableArray alloc] init];
    for (LSIArtist *iteratedArtist in _savedArtists) {
        [artistsDictinariesArray addObject:[iteratedArtist returnDictionary]];
    }

    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:artistsDictinariesArray options:0 error:&error];
    if (error) {
        NSLog(@"Could not convert the saved artists into Data! %@", error);
    }
    
    [data writeToURL:[self documentsURL] atomically:true];
}

- (NSURL *)documentsURL {
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
    return [documentsDirectoryURL URLByAppendingPathComponent: @"FavoriteArtists.json"];
}

@end
