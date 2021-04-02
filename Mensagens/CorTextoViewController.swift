//
//  ViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class CorTextoViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func changeColor(_ sender: UIButton) {
        tfMensagem.backgroundColor = .green
        let vc = ColorPickerViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

