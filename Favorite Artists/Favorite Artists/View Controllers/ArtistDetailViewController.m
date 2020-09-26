//
//  AddArtistViewController.m
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import "ArtistDetailViewController.h"

//MARK: - Interface -
@interface ArtistDetailViewController () <UISearchBarDelegate>

///  Properties
@property (nonatomic) LSIArtist *artist;

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

///  - Methods -
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _searchBar.delegate = self;
    _artistController = [[LSIArtistController alloc] init];
}

- (void)setArtist:(LSIArtist *)artist {
    _artist = artist;
    
    ///This is the dumbest code I have ever written in my life, but it works lol
    ///I have everything setup to decode the int from the api as an NSNumber, it worked for whatever reason, but I think the underlying value is int.
    ///So if I try to get the string value from the NSNumber, the app crashes. But if I get the int value, it works fine.
    ///Soooooo... This is how I made it work lol
    int yearFormedInt = [artist.yearFormed intValue];
    NSNumber *yearFormedNumber = [[NSNumber alloc] initWithInt:yearFormedInt];
    NSString *yearFormedString = [@"Formed in:" stringByAppendingString:[yearFormedNumber stringValue]];
    
    /// Giving views values to display
    self->_artistNameLabel.text = artist.name;
    self->_yearFormedLabel.text = yearFormedString;
    self->_artistBiographyTextView.text = artist.biograpy;
    
    /// Revealing all views
    self->_artistNameLabel.hidden = false;
    self->_yearFormedLabel.hidden = false;
    self->_artistBiographyTextView.hidden = false;
    self->_saveButton.enabled = true;
    [self.searchBar resignFirstResponder];
    
}

///  - UISearchBar Delegate Methods -
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSString *searchTerm = searchBar.text;
    
     [_artistController fetchArtistWithSearchTerm:searchTerm completionHandler:^(LSIArtist * _Nullable artist, NSError * _Nullable error) {
         
         [self setArtist: artist];
         if (self.artist.name == nil) {
             NSLog(@"ERROR: Could not fetch artist!");
             return;
         }
    
     }];
    
}

///  - IBActions -
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [_artistController saveArtist:_artist];
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
