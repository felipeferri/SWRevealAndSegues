//
//  ThirdViewController.m
//  SWRevealDebug
//
//  Created by Felipe Ferri on 26/01/16.
//  Copyright © 2016 Felipe Ferri. All rights reserved.
//

#import "ThirdViewController.h"
#import "SWRevealViewController.h"
#import "FirstViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UIButton *menuButton;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    
    if (revealViewController) {
        [self.menuButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (IBAction)returnToFirst:(id)sender {
    //[self performSegueWithIdentifier:@"First" sender:self];
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
