//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var tfMensagem: UITextView!
    @IBOutlet weak var viewBorder: UIView!
    var mensagem = Mensagem()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadViews()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! BaseViewController
        vc.mensagem = self.mensagem
    }
    
    func loadViews() {
        if let texto = mensagem.texto {
            tfMensagem.text = texto
        }
        if let cor = mensagem.corDoTexto {
            tfMensagem.textColor = cor
        }
        if let cor = mensagem.backgroudColor {
            tfMensagem.backgroundColor = cor
        }
        if let cor = mensagem.viewColorBackground {
            view.backgroundColor = cor
        }
    }
    
    @IBAction func changeColor (_ sender: UIButton) {
        let colorPicker = storyboard?.instantiateViewController(identifier: "ColorPickerViewController") as! ColorPickerViewController
        if let delegate = self as? ColorPickerDelegate {
            colorPicker.delegate = delegate
            present(colorPicker, animated: true, completion: nil)
        }
    }
}
