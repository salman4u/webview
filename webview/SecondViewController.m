//
//  SecondViewController.m
//  webview
//
//  Created by salman mamun on 31/12/2014.
//  Copyright (c) 2014 salman mamun. All rights reserved.
//

#import "SecondViewController.h"
#import "MBProgressHUD.h"
#import "SVWebViewController1.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for(UIView *v in [self.view subviews]){
        if ([v isKindOfClass:[UILabel class]] || [v isKindOfClass:[UITextView class]]) {
            [v removeFromSuperview];
        }
    }
    webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 21)];
    lbl.text = @"Pleasce check internet connection.";
    lbl.tag = 99;
    lbl.center =self.view.center;
    lbl.textAlignment = NSTextAlignmentCenter;
  // [self.view addSubview:lbl];
   
   webView.delegate = self;

    lbl.hidden = YES;
    webViewController = [[SVWebViewController1 alloc] initWithAddress:@"http://mkl-import.com/products/"];
    
    [self.navigationController pushViewController:webViewController animated:YES];
    



   // [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mkl-import.com/products/"]]];
//    SVWebViewController *webViewController = [[SVWebViewController alloc] initWithAddress:@"http://mkl-import.com/products/"];
//    
//    [self.navigationController pushViewController:webViewController animated:YES];
//    

    
}
-(void)dismiss{
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [webViewController loadView];
   // [[self navigationController] popToRootViewControllerAnimated:NO];
   

   // if (lbl.hidden == NO)
    {
        //[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mkl-import.com/products/"]]];
        lbl.hidden = YES;
        webView.hidden = NO;
    }
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Some Error Occured, Please check the internet connection." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:@"Re Try", nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex != [alertView cancelButtonIndex]) {
       // [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mkl-import.com/products/"]]];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
