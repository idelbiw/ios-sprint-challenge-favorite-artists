//
//  AddArtistViewController.m
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import "ArtistDetailViewController.h"

//MARK: - Interface -
@interface ArtistDetailViewController () <UISearchBarDelegate>

///  IBOutlets
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearFormedLabel;
@property (weak, nonatomic) IBOutlet UITextView *artistBiographyTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

///  IBActions
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

@end

//MARK: - Implementation
@implementation ArtistDetailViewController

///  - View Controller Methods -
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _searchBar.delegate = self;
    _artistController = [[LSIArtistController alloc] init];
}

///  - UISearchBar Delegate Methods -
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSString *searchTerm = searchBar.text;
    
     [_artistController fetchArtistWithSearchTerm:searchTerm completionHandler:^(LSIArtist * _Nullable artist, NSError * _Nullable error) {
         LSIArtist *fetchedArtist =artist;
         if (fetchedArtist.biograpy == nil) {
             NSLog(@"ERROR: Could not fetch artist!");
             return;
         }
         
         ///This is the dumbest code I have ever written in my life, but it works lol
         ///I have everything setup to decode the int from the api as an NSNumber, it worked for whatever reason, but I think the underlying value is int.
         ///So if I try to get the string value from the NSNumber, the app crashes. But if I get the int value, it works fine.
         ///Soooooo... This is how I made it work lol
         int yearFormedInt = [fetchedArtist.yearFormed intValue];
         NSNumber *yearFormedNumber = [[NSNumber alloc] initWithInt:yearFormedInt];
         NSString *yearFormedString = [@"Formed in:" stringByAppendingString:[yearFormedNumber stringValue]];
         
         /// Giving views values to display
         self->_artistNameLabel.text = fetchedArtist.name;
         self->_yearFormedLabel.text = yearFormedString;
         self->_artistBiographyTextView.text = fetchedArtist.biograpy;
         
         /// Revealing all views
         self->_artistNameLabel.hidden = false;
         self->_yearFormedLabel.hidden = false;
         self->_artistBiographyTextView.hidden = false;
         self->_saveButton.enabled = true;
         [searchBar resignFirstResponder];
    }];
    
}

///  - IBActions -
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
}

@end
