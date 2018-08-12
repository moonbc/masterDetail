//
//  DetailViewController.swift
//  masterDetail
//
//  Created by 402-07 on 2018. 8. 4..
//  Copyright © 2018년 moonbc. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    //상위 뷰 컨트롤러에서 데이터를 받을 변수 선언
    var addr:String?
    
    


    func configureView() {

            //webSiterk nil이 아닐때만 동작
            if let address = addr{
                let webURL = URL(string: address)
                let urlRequest = URLRequest(url: webURL!)
                
                webView.load(urlRequest)
            }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

