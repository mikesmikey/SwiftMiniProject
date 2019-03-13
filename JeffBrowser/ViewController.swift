//
//  ViewController.swift
//  JeffBrowser
//
//  Created by informatics on 13/3/2562 BE.
//  Copyright © 2562 Jeffware. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView : WKWebView!
    @IBOutlet weak var searchField : UITextField!
    
    @IBOutlet weak var backButton : UIButton!
    @IBOutlet weak var forwardButton : UIButton!
    
    var history = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        searchField.text! = "www.google.com"
        search(strUrl : searchField.text!)
    }
    
    func search(strUrl : String) {
        
        history.append(strUrl)
        
        let myURL = URL(string:"https://\(strUrl)")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    @IBAction func searchButtonCLick() {
        search(strUrl : searchField.text!)
    }
    
    @IBAction func backButtonClick() {
        search(strUrl : history.popLast()!)
    }

}

