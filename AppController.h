/* 
   Project: NSPopUpButton_code_test

   Author: Gregory John Casamento

   Created: 2024-12-04 19:27:46 -0500 by heron
   
   Application Controller
*/
 
#ifndef _PCAPPPROJ_APPCONTROLLER_H
#define _PCAPPPROJ_APPCONTROLLER_H

#import <AppKit/AppKit.h>

@interface AppController : NSObject
{
  IBOutlet NSWindow *_window;
  NSPopUpButton *_popupButton0;
  NSPopUpButton *_popupButton1;
}

+ (void)  initialize;

- (id) init;
- (void) dealloc;

- (void) awakeFromNib;

- (void) applicationDidFinishLaunching: (NSNotification *)aNotif;
- (BOOL) applicationShouldTerminate: (id)sender;
- (void) applicationWillTerminate: (NSNotification *)aNotif;
- (BOOL) application: (NSApplication *)application
	    openFile: (NSString *)fileName;

- (void) showPrefPanel: (id)sender;
- (IBAction) toggle: (id)sender;

@end

#endif
