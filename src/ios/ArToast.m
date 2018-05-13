#import "ArToast.h"

@implementation ArToast

- (void)show:(CDVInvokedUrlCommand*)command
{

    NSString* message = [[command arguments] objectAtIndex:0];
    
    UIAlertView *toast = [[UIAlertView alloc] initWithTitle:nil
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:nil, nil];
    [toast show];
    
    int duration = 3; // duration in seconds
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [toast dismissWithClickedButtonIndex:0 animated:YES];
    });


    /*NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Hello3, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];*/
}

@end
