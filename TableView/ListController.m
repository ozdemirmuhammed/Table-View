//
//  ListController.m
//  TableView
//
//  Created by Muhammed on 10.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import "ListController.h"

@interface ListController ()

@end

@implementation ListController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    // arrayimizi allocate ediyoruz.
    _contactList= [[NSMutableArray alloc] init];
    _imageList = [[NSMutableArray alloc] init];
    
    //arrayimize rastgele değerler atıyoruz.
    [_contactList addObject:@"Fatih ÇAL"];
    [_contactList addObject:@"Gökhan ÜNAL"];
    [_contactList addObject:@"Muhammed ÖZDEMİR"];
    [_contactList addObject:@"Muhammed Murat Tutar"];
    [_contactList addObject:@"Mürşid YAZAR"];
    [_contactList addObject:@"Serhat ALTINEVLEK"];
    
    
    [_imageList addObject:@"fatih_cal.jpeg"];
    [_imageList addObject:@"gokhan_unal.jpeg"];
    [_imageList addObject:@"muhammed_ozdemir.jpeg"];
    [_imageList addObject:@"murat_tutar.jpeg"];
    [_imageList addObject:@"mursid_yazar.jpeg"];
    [_imageList addObject:@"serhat_altinevlek.jpeg"];
    
    
    
    
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    //arrayimizin içindeki eleman sayısı kadar hücre oluşturuyoruz.
    return [_contactList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell" forIndexPath:indexPath];
    

    
    cell.textLabel.text=[_contactList objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:[_imageList objectAtIndex:indexPath.row]];
    
    
    return cell;
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
