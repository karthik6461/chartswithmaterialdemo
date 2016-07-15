//
//  ToolbarClass.swift
//  emschartsdemo
//
//  Created by Karuppasamy, Karthikeyan (GE Digital, consultant) on 7/14/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit
import Material

class EMSToolbar : UIViewController{
    /// Reference for containerView.
    private var containerView: UIView!
    
    /// Reference for Toolbar.
    private var toolbar: Toolbar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareContainerView()
        prepareToolbar()
    }
    
    
    /// Prepares the containerView.
    private func prepareContainerView() {
        containerView = UIView()
        view.layout(containerView).edges(top: 100, left: 20, right: 20)
    }
    
    /// Prepares the toolbar
    private func prepareToolbar() {
        toolbar = Toolbar()
        containerView.addSubview(toolbar)
        
        // Title label.
        toolbar.title = "Material"
        toolbar.titleLabel.textColor = MaterialColor.white
        
        // Detail label.
        toolbar.detail = "Build Beautiful Software"
        toolbar.detailLabel.textColor = MaterialColor.white
        
        var image: UIImage? = MaterialIcon.cm.menu
        
        // Menu button.
        let menuButton: IconButton = IconButton()
        menuButton.pulseColor = MaterialColor.white
        menuButton.tintColor = MaterialColor.white
        menuButton.setImage(image, forState: .Normal)
        menuButton.setImage(image, forState: .Highlighted)
        
        // Switch control.
        let switchControl: MaterialSwitch = MaterialSwitch(state: .Off, style: .LightContent, size: .Small)
        
        // Search button.
        image = MaterialIcon.cm.search
        let searchButton: IconButton = IconButton()
        searchButton.pulseColor = MaterialColor.white
        searchButton.tintColor = MaterialColor.white
        searchButton.setImage(image, forState: .Normal)
        searchButton.setImage(image, forState: .Highlighted)
        
        /*
         To lighten the status bar - add the
         "View controller-based status bar appearance = NO"
         to your info.plist file and set the following property.
         */
        toolbar.backgroundColor = MaterialColor.blue.base
        toolbar.leftControls = [menuButton]
        toolbar.rightControls = [switchControl, searchButton]
    }
}
