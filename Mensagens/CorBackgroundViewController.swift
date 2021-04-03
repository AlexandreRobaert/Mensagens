//
//  CorDaBordaViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class CorBackgroundViewController: BaseViewController {
    
    private var isHiddenBorder = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadViews()
    }

    @IBAction func ocultarBorda(_ sender: UISwitch) {
        viewBorder.backgroundColor = sender.isOn ? .white : .clear
        isHiddenBorder = !sender.isOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let vc = segue.destination as! ResultViewController
        vc.isHiddenBorder = isHiddenBorder
    }
}

extension CorBackgroundViewController: ColorPickerDelegate {
    func applyColor(_ color: UIColor) {
        view.backgroundColor = color
        mensagem.viewColorBackground = color
    }
}
