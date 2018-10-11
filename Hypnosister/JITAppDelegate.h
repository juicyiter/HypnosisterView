//
//  JITAppDelegate.h
//  Hypnosister
//
//  Created by JuicyITer on 10/10/2018.
//  Copyright © 2018 JuicyITer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface JITAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

