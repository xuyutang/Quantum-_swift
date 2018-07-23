//
//  JSBridge.swift
//  Quantum _swift
//
//  Created by xyt on 2018/7/18.
//  Copyright © 2018年 xyt. All rights reserved.
//

import UIKit
import JavaScriptCore


@objc protocol JSBridgeProtocol:JSExport {
     func setTitle(data:Any)
    
     func getNavValue(data:Any)
   
     func setFootMenu(data:Any)

     func setNavigator(data:Any)

     func openNew(data:Any)

     func selectDate(data:Any)

     func actions(data:Any)
    
     func viewPicture(data:Any)
    
     func showLoading(data:Any)
    
     func hideLoading(data:Any)
    
     func selectImage(data:Any)
    
     func selector(data:Any)
    
     func setAddress(data:Any)
    
     func setTopMenu(data:Any)
    
     func callHostPlugin(data:Any)
    
     func dragRefresh(data:Any)
    
     func close(data:Any)
    
     func refreshParent(data:Any)
    
     func callParent(data:Any)
    
     func put(data:Any)
    
     func remove(data:Any)
    
     func get(data:Any)
    
     func dial(data:Any)
    
     func prompt(data:Any)
    
     func confirm(data:Any)
    
     func show2dCode(data:Any)
    
     func acceptMessage(data:Any)
    
     func hideTopRight(data:Any)
    
     func debug(data:Any)
    
     func showMessage(data:Any)
    
     func selectCalendar(data:Any)
    
     func openModal(data:Any)
    
     func getNewMessageNum(data:Any)
    
     func getLatestMessage(data:Any)
    
     func updateIsRead(data:Any)
    
     func listMessage(data:Any)
    
     func openNewWithFlag(data:Any)
    
     func auth(data:Any)
}


class JSBridge: NSObject {
 
}

