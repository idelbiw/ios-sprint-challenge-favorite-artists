//
//  AddArtistViewController.m
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import "AddArtistViewController.h"

//MARK: - Interface -
@interface AddArtistViewController ()

//  IBOutlets
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *artistBiographyTextView;

//  IBActions
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

@end

//MARK: - Implementation
@implementation AddArtistViewController

//  - Methods -
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//  - IBActions -
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
}

@end
