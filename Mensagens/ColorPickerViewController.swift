//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

protocol ColorPickerDelegate {
    func applyColor(_ color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viewColorBackground: UIView!
    @IBOutlet weak var sliderVermelho: UISlider!
    @IBOutlet weak var sliderVerde: UISlider!
    @IBOutlet weak var sliderAzul: UISlider!
    
    var delegate: ColorPickerDelegate?

    @IBAction func escolherCor(_ sender: Any) {
        delegate?.applyColor(viewColorBackground.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mudouACor(_ sender: UISlider) {
        viewColorBackground.backgroundColor = UIColor(red: CGFloat(sliderVermelho.value), green: CGFloat(sliderVerde.value), blue: CGFloat(sliderAzul.value), alpha: 1)
    }
}
