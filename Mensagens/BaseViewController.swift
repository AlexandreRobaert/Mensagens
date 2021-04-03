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
    var mensagem: Mensagem?
    var colorPicker: ColorPickerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        colorPicker = storyboard?.instantiateViewController(identifier: "ColorPickerViewController") as? ColorPickerViewController
        configViews()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! BaseViewController
        vc.mensagem = self.mensagem
    }
    
    func configViews() {
        if let texto = mensagem?.texto {
            tfMensagem.text = texto
        }
        if let cor = mensagem?.corDoTexto {
            tfMensagem.textColor = cor
        }
        if let cor = mensagem?.backgroudColor {
            tfMensagem.backgroundColor = cor
        }
        if let cor = mensagem?.borderColor {
            viewBorder.backgroundColor = cor
        }
    }
    
    @IBAction func changeColor (_ sender: UIButton) {
        present(colorPicker, animated: true, completion: nil)
    }
}
