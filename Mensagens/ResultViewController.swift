//
//  ResultViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class ResultViewController: BaseViewController {
    
    var isHiddenBorder: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBorder.backgroundColor = isHiddenBorder ? .clear : .white
    }
}
