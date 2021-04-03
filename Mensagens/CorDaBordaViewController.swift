//
//  CorDaBordaViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class CorDaBordaViewController: BaseViewController {
    
    private var isHiddenBorder = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPicker.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configViews()
    }

    @IBAction func ocultarBorda(_ sender: UISwitch) {
        viewBorder.backgroundColor = sender.isOn ? mensagem?.borderColor : .clear
        isHiddenBorder = !sender.isOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let vc = segue.destination as! ResultViewController
        vc.isHiddenBorder = isHiddenBorder
    }
}

extension CorDaBordaViewController: ColorPickerDelegate {
    func applyColor(_ color: UIColor) {
        viewBorder.backgroundColor = color
        mensagem?.borderColor = color
    }
}
