//
//  AppDelegate.m
//  ColorList2
//
//  Created by Steeve Fong on 3/27/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import "AppDelegate.h"

#import "ColorListVC.h"
#import "PaletteListVC.h"
#import "PatternVC.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    ColorListVC * mainView   = [[ColorListVC alloc] initWithNibName:@"ColorListVC" bundle:nil];
    PaletteListVC *paletteVw = [[PaletteListVC alloc] init];
    PatternVC *patternVw = [[PatternVC alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:mainView];
    UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:paletteVw];
    UINavigationController * nav3 = [[UINavigationController alloc] initWithRootViewController:patternVw];
    
    UITabBarController * tabBarController = [[UITabBarController alloc] init];
//    UITabBar * tabBarColor = [tabBarController tabBar];
//    [tabBarColor setBackgroundImage:[UIImage imageNamed:@"color.png"]];

    UITabBarItem * tabBarColor = [[UITabBarItem alloc] initWithTitle:@"Color" image:[UIImage imageNamed:@"color.png"] tag:0];
    
    UITabBarItem * tabBarPalette = [[UITabBarItem alloc] initWithTitle:@"Palette" image:[UIImage imageNamed:@"palette.png"] tag:0];
    
    UITabBarItem * tabBarPattern = [[UITabBarItem alloc] initWithTitle:@"Pattern" image:[UIImage imageNamed:@"palette.png"] tag:0];

    [mainView setTabBarItem:tabBarColor];
    [paletteVw setTabBarItem:tabBarPalette];
    [patternVw setTabBarItem:tabBarPattern];
    
    [tabBarController setViewControllers:@[nav, nav2, nav3] animated:YES];
    
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
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
