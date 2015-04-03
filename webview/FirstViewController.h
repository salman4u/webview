//
//  FirstViewController.h
//  webview
//
//  Created by salman mamun on 31/12/2014.
//  Copyright (c) 2014 salman mamun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIWebViewDelegate,UIAlertViewDelegate>{
    UILabel *lbl;
    UIWebView *webView;
}

@end
