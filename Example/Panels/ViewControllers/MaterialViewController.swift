//
//  MaterialPanleViewController.swift
//  Panels_Example
//
//  Created by Antonio Casero on 30.09.18.
//  Copyright © 2018 Antonio Casero. All rights reserved.
//

import UIKit
import Panels

class MaterialViewController: UIViewController {
    lazy var panelManager = Panels(target: self)
    override func viewDidLoad() {
        super.viewDidLoad()
        let panel = UIStoryboard.instantiatePanel(identifier: "PanelMaterial")
        var panelConfiguration = PanelConfiguration(size: .half)
        panelConfiguration.animateEntry = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.panelManager.show(panel: panel, config: panelConfiguration)
        }
    }

    @IBAction func closePanel(_ sender: Any) {
        self.panelManager.dismiss()
    }
}
