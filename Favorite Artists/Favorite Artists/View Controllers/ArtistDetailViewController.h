//
//  AddArtistViewController.h
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import <UIKit/UIKit.h>
#import "LSIArtistController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArtistDetailViewController : UIViewController

@property LSIArtistController *artistController;
@property BOOL detailView;

@end

NS_ASSUME_NONNULL_END
