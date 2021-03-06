//
//  DetailViewController.swift
//  Project7
//
//  Created by Eddie Jung on 8/6/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem = detailItem else { return }
        
        let html = """
            <html>
                <head>
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <style>
                        .container { padding: 20 }
                        .header { font-size: 200% }
                        .body { font-size: 150%; padding-top: 10 }
                    </style>
                </head>
                <body>
                    <div class="container">
                        <div class="header">
                            \(detailItem.title)
                        </div>
                        <hr>
                        <div class="body">
                            \(detailItem.body)
                        </div>
                    </div>
                </body>
            </html>
            """
        webView.loadHTMLString(html, baseURL: nil)
    }


}
