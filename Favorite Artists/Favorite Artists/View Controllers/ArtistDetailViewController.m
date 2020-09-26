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

///  IBActions
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

@end

//MARK: - Implementation
@implementation ArtistDetailViewController

///  - View Controller Methods -
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

///  - UISearchBar Delegate Methods -
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
}

///  - IBActions -
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
}

@end
