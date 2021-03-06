//
//  AppDelegate.m
//  bilibili
//
//  Created by 翟泉 on 16/6/16.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "AppDelegate.h"
#import <SDWebImage/SDImageCache.h>

#import "ProjectUpdate.h"
#import <wax/wax.h>
#import <wax/wax_http.h>
#import <wax/wax_json.h>
#import <wax/wax_filesystem.h>

#import "ScrollTabBarController.h"
#import "StartViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[ScrollTabBarController alloc] init];
    [self.window makeKeyAndVisible];
    
    
    
//    [StartViewController show];
    
//    wax_start(nil,luaopen_wax_http,luaopen_wax_json,luaopen_wax_filesystem,nil);
//    NSString* path = [[ProjectUpdate share] update];
//    wax_runLuaFile([path UTF8String]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    [[SDImageCache sharedImageCache] clearMemory];
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
}


@end
