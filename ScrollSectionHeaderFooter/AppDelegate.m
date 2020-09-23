//
//  AppDelegate.m
//  ScrollSectionHeaderFooter
//
//  Created by xx on 2020/9/23.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    
    _window.rootViewController = nav;
    
    [_window makeKeyAndVisible];
    
    return YES;
}


@end
