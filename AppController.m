/* 
   Project: NSPopUpButton_code_test

   Author: Gregory John Casamento,,,

   Created: 2024-12-04 19:27:46 -0500 by heron
   
   Application Controller
*/

#import "AppController.h"

@implementation AppController

+ (void) initialize
{
  NSMutableDictionary *defaults = [NSMutableDictionary dictionary];

  /*
   * Register your app's defaults here by adding objects to the
   * dictionary, eg
   *
   * [defaults setObject:anObject forKey:keyForThatObject];
   *
   */
  
  [[NSUserDefaults standardUserDefaults] registerDefaults: defaults];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id) init
{
  if ((self = [super init]))
    {
    }
  return self;
}

- (void) dealloc
{
  [super dealloc];
}

- (void) awakeFromNib
{
}

- (void) applicationDidFinishLaunching: (NSNotification *)aNotif
{
  NSPopUpButton *popupButton0 = [[NSPopUpButton alloc] initWithFrame: NSMakeRect(100,60,150,30)];
  NSPopUpButton *popupButton1 = [[NSPopUpButton alloc] initWithFrame: NSMakeRect(100,100,150,30)];

  [[_window contentView] addSubview: popupButton0];
  [[_window contentView] addSubview: popupButton1];
  [popupButton1 setPullsDown: YES];

  AUTORELEASE(popupButton0);
  AUTORELEASE(popupButton1);

  [popupButton0 addItemWithTitle: @"Item 1"];
  [popupButton0 addItemWithTitle: @"Item 2"];
  [popupButton0 addItemWithTitle: @"Item 3"];

  [popupButton1 addItemWithTitle: @"Item 1"];
  [popupButton1 addItemWithTitle: @"Item 2"];
  [popupButton1 addItemWithTitle: @"Item 3"];
  [popupButton1 addItemWithTitle: @"Item 4"];

  //  Uncomment if your application is Renaissance-based
//  [NSBundle loadGSMarkupNamed: @"Main" owner: self];
  
}

- (BOOL) applicationShouldTerminate: (id)sender
{
  return YES;
}

- (void) applicationWillTerminate: (NSNotification *)aNotif
{
}

- (BOOL) application: (NSApplication *)application
	    openFile: (NSString *)fileName
{
  return NO;
}

- (void) showPrefPanel: (id)sender
{
}

@end
