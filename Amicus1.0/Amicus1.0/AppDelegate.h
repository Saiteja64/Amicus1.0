//
//  AppDelegate.h
//  Amicus1.0
//
//  Created by Saiteja Samudrala on 2/27/15.
//  Copyright (c) 2015 edu.saiteja. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <Sinch/Sinch.h>
#import <Sinch/SINOutgoingMessage.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>//,SINClientDelegate,SINMessageClientDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) id<SINClient> sinchClient;

- (void)sendTextMessage:(NSString *)messageText toRecipient:(NSString *)recipientID;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

