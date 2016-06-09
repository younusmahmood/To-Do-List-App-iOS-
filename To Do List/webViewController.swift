//
//  webViewController.swift
//  To Do List
//
//  Created by Younus Mahmood on 3/14/16.
//  Copyright © 2016 YMINC. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Sets URL which information will be downloaded from
        let url = NSURL(string: "http://motivationgrid.com/category/motivational-articles/")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        
        //Pretty much opening a browser in your app, and then that browser is going to fetch your URL
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                //                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                //
                //                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                //
                //                })
                
                
                
            }
                
            else{
                
                //error message
            }
            
            
            
        }
        
        task.resume();
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
