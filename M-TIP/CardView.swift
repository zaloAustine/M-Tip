//
//  CardView.swift
//  M-TIP
//
//  Created by Zalo Austine on 20/01/2022.
//
import UIKit

@IBDesignable
class CardView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 2

    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 2
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.2

    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)

        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
    
    func openWebsite(){
        if let url = URL(string: "https://www.hackingwithswift.com") {
            UIApplication.shared.open(url)
        }
    }
    
    func navigateToWhatsApp() {

        let whatsappURL = URL(string: "https://api.whatsapp.com/send?phone=0702342213&text=Tip")
        if UIApplication.shared.canOpenURL(whatsappURL!) {
            UIApplication.shared.open(whatsappURL!, options: [:], completionHandler: nil)
           }
    }
    
    func call(){
        let number = "254702342213"
        if let url = URL(string: "tel://\(number)") {
            UIApplication.shared.openURL(url)
        }
    }

}
