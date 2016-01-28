//
//  FirstViewController.m
//  SWRevealDebug
//
//  Created by Felipe Ferri on 26/01/16.
//  Copyright © 2016 Felipe Ferri. All rights reserved.
//

#import "FirstViewController.h"
#import "SWRevealViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIButton *menuButton;

@end

@implementation FirstViewController

-(IBAction)unwindToFirstScreen:(UIStoryboardSegue *)segue {
}

- (void)viewDidLoad {
    [super viewDidLoad];

    SWRevealViewController *revealViewController = self.revealViewController;
    
    if (revealViewController) {
        [self.menuButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
