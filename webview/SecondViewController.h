//
//  SecondViewController.h
//  webview
//
//  Created by salman mamun on 31/12/2014.
//  Copyright (c) 2014 salman mamun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVWebViewController1.h"
@interface SecondViewController : UIViewController<UIWebViewDelegate>{
    UILabel *lbl;
    UIWebView *webView;
    SVWebViewController1 *webViewController;
}

@end
