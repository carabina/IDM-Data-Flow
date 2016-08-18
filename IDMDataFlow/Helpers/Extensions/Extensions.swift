//
//  Extensions.swift
//  ProjectTemplate
//
//  Created by FOLY on 8/15/16.
//  Copyright © 2016 NGUYEN CHI CONG. All rights reserved.
//

import Foundation
import IntegrationLayer
import SVProgressHUD
import MBProgressHUD
import IDMCore

extension UIView: CanPresentLoadingView {
    public func presentLoadingView() {
        MBProgressHUD.showHUDAddedTo(self, animated: true)
        print("loading...")
    }
    
    public func dismissLoadingView() {
        MBProgressHUD.hideHUDForView(self, animated: true)
        print("dimiss")
    }
}

extension UIViewController : CanPresentErrorAlert {
    public func presentErrorAlert(error: NSError?) {
        let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Destructive, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}