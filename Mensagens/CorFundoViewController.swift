//
//  CorFundoViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class CorFundoViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadViews()
    }
}

extension CorFundoViewController: ColorPickerDelegate {
    func applyColor(_ color: UIColor) {
        tfMensagem.backgroundColor = color
        mensagem.backgroudColor = color
    }
}
