//
//  ViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class CorTextoViewController: BaseViewController {

    @IBOutlet weak var tfTexto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfTexto.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadViews()
    }
    
    override func changeColor(_ sender: UIButton) {
        super.changeColor(sender)
    }
}

extension CorTextoViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        mensagem.texto = textField.text
        tfTexto.resignFirstResponder()
        loadViews()
        return true
    }
}

extension CorTextoViewController: ColorPickerDelegate {
    func applyColor(_ color: UIColor) {
        tfMensagem.textColor = color
        mensagem.corDoTexto = color
    }
}
