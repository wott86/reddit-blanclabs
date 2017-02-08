//
//  AppDelegate.h
//  Reddit
//
//  Created by Cesar Vilera on 2/7/17.
//  Copyright © 2017 Cesar Vilera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

