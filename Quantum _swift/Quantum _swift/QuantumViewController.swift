//
//  QuantumViewController.swift
//  Quantum _swift
//
//  Created by xyt on 2018/7/18.
//  Copyright © 2018年 xyt. All rights reserved.
//

import UIKit
import JavaScriptCore


@objc class JSModelSwift:NSObject,JSBridgeProtocol {
    weak var jsContext:JSContext?
    

    func setTitle(data: Any) {
        
    }
    
    func getNavValue(data: Any) {
        
    }
    
    func setFootMenu(data: Any) {
        
    }
    
    func setNavigator(data: Any) {
        
    }
    
    func openNew(data: Any) {
    
    }
    
    func selectDate(data: Any) {
        
    }
    
    func actions(data: Any) {
        
    }
    
    func viewPicture(data: Any) {
        
    }
    
    func showLoading(data: Any) {
        
    }
    
    func hideLoading(data: Any) {
    
    }
    
    func selectImage(data: Any) {
        
    }
    
    func selector(data: Any) {
        
    }
    
    func setAddress(data: Any) {
        
    }
    
    func setTopMenu(data: Any) {
        
    }
    
    func callHostPlugin(data: Any) {
        
    }
    
    func dragRefresh(data: Any) {
        
    }
    
    func close(data: Any) {
        
    }
    
    func refreshParent(data: Any) {
        
    }
    
    func callParent(data: Any) {
        
    }
    
    func put(data: Any) {
        
    }
    
    func remove(data: Any) {
        
    }
    
    func get(data: Any) {
        
    }
    
    func dial(data: Any) {
        
    }
    
    func prompt(data: Any) {
        
    }
    
    func confirm(data: Any) {
        
    }
    
    func show2dCode(data: Any) {
        
    }
    
    func acceptMessage(data: Any) {
        
    }
    
    func hideTopRight(data: Any) {
        
    }
    
    func debug(data: Any) {
        
    }
    
    func showMessage(data: Any) {
        
    }
    
    func selectCalendar(data: Any) {
        
    }
    
    func openModal(data: Any) {
        
    }
    
    func getNewMessageNum(data: Any) {
        
    }
    
    func getLatestMessage(data: Any) {
        
    }
    
    func updateIsRead(data: Any) {
        
    }
    
    func listMessage(data: Any) {
        
    }
    
    func openNewWithFlag(data: Any) {
        
    }
    
    
}
 class QuantumViewController: UIViewController,UIWebViewDelegate {
    var app_url:String?
    var webView:UIWebView!
    var jsContext: JSContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页";
        
        webView = UIWebView(frame: CGRect(x: 0, y: 64, width: 375, height: 640))
        webView?.delegate = self
        webView?.backgroundColor = UIColor.groupTableViewBackground
        webView?.keyboardDisplayRequiresUserAction = false
        webView?.scrollView.decelerationRate = UIScrollViewDecelerationRateNormal
        
       let url = NSURL(string: self.app_url!)
        let request = NSURLRequest(url: url! as URL, cachePolicy: NSURLRequest.CachePolicy.reloadIgnoringLocalCacheData, timeoutInterval: 30)
        
        self.webView?.loadRequest(request as URLRequest)
        self.webView?.backgroundColor = UIColor.red
        self.view.addSubview(webView!)
        
        // Do any additional setup after loading the view.
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        self.addCustomActions()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.addCustomActions()

    }
   
    func addCustomActions() {
        //创建js中的上下文环境
        let context = self.webView!.value(forKeyPath: "documentView.webView.mainFrame.javaScriptContext") as?JSContext
        
        //创建模型
        let model = JSModelSwift()
        model.jsContext = context
        self.jsContext = context
        self.jsContext?.setObject(model, forKeyedSubscript:"app" as NSCopying & NSObjectProtocol)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
