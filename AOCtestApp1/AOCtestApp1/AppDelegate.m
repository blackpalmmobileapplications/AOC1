//
//  AppDelegate.m
//  AOCtestApp1
//
//  Created by Carmen Johnson on 11/21/12.
//  Copyright (c) 2012 Carmen Johnson. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Here is my attempt at writing Objective C
    
    BOOL IsEnough = YES;
    BOOL IsNotEnough = NO;
    int wingsCooked = 10;
    int wingsInOven = 10;
    int wingsneeded = 14;
    float totalCookingTime = 2.5f;
    float timeLeft = 2.5;
    
    //Yodle call function....Yahoo
    NSLog(@"Carmen Johnson in AOC1, November 2012");
    
    //Cast float to int with displaying using NSLog
    NSLog(@"I have been cooking for %d hours almost %.2f if you count my breaks",(int)totalCookingTime,totalCookingTime);
    
    //Using For Loop total 
    for (wingsCooked = 10; wingsCooked < 25; wingsCooked++){
    //Loops for amount cooked
        for (wingsInOven = 10; wingsInOven < 25; wingsInOven++){
            if (wingsInOven < 30){
                NSLog(@"Wings in the oven, %d have cooked", wingsInOven);
            }
            else if (wingsInOven == 35) {
                NSLog(@"When there are %d cooked, we wil have enough chicken.",wingsneeded);
            }
        }
            NSLog(@"So %d chicken is plenty of food to feed everyone.", wingsneeded);
        }
    //While, And BOOL statements
    // Loops to show how many guest arrived
    while (wingsneeded > 7) {
        NSLog(@"There are a lot of guest, %d should fill them up.", wingsneeded); wingsneeded--;
    }
    
    //Conditional else, else if, else statements
    if (wingsInOven == 13 && IsEnough == YES) {
        NSLog(@"There is %d left it should be ok.", wingsInOven);
    }
    else if (wingsInOven < 13 && IsNotEnough == NO){
        NSLog(@"Since there is %.2f pieces left, there is %d chicken for everyone to eat.", timeLeft, wingsInOven);
    }
    else {
        NSLog(@"I have cooked %d chicken for this event.", wingsCooked);
    }
    
    return YES;
    
    }
    
        


 - (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
