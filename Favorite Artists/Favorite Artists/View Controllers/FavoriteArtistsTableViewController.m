//
//  FavoriteArtistsTableViewController.m
//  Favorite Artists
//
//  Created by Waseem Idelbi on 9/25/20.
//

#import "FavoriteArtistsTableViewController.h"
#import "LSIArtistController.h"
#import "LSIArtist.h"


//MARK: - Interface -
@interface FavoriteArtistsTableViewController ()

///  Properties
@property LSIArtistController *artistController;

@end



//MARK: - Implementation -
@implementation FavoriteArtistsTableViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _artistController = [[LSIArtistController alloc] init];
    [self.tableView reloadData];
}

/// - Table View Data Source -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _artistController.savedArtists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ArtistCell" forIndexPath:indexPath];
    
    LSIArtist *artist = _artistController.savedArtists[indexPath.row];
    cell.textLabel.text = artist.name;
    cell.detailTextLabel.text = [@"Formed in: " stringByAppendingString: [artist.yearFormed stringValue]];
    
    return cell;
}

/// - Navigation -
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}


@end
