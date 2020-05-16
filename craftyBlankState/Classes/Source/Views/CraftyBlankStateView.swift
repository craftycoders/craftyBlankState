//
//  CraftyBlankStateView.swift
//  craftyBlankState
//
//  Created by Lyle Jover on 5/15/20.
//

import UIKit

public class CraftyBlankStateView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var msgLbl: UILabel!
    
    var defaultImage: UIImage = UIImage()
    var defaultImageColor: UIColor = UIColor(hex: "#CC0000") ?? UIColor.red
    var defaultFont: UIFont {
        guard let font = dataSource?.font(in: self) else { return UIFont.systemFont(ofSize: 17, weight: .medium) }
        return font
    }
    
    public var dataSource: CraftyBlankStateDataSource?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetup()
    }
    
    private func initialSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        addSubview(view)
        setDefaultImage()
        self.msgLbl.text = "Looks like there's nothing here. Come back later."
        self.msgLbl.font = defaultFont
    }
    
    fileprivate func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView

        return nibView
    }
    
    fileprivate func setDefaultImage() {
        defaultImage = UIImage(named: "sadFace", in: Bundle(for: type(of: self)), compatibleWith: nil)!
        self.imgView.image = defaultImage.withRenderingMode(.alwaysTemplate)
        self.imgView.tintColor = defaultImageColor
    }
    
    
    public func refresh() {
        if let image = dataSource?.image(in: self) {
            self.imgView.image = image
        } else {
            setDefaultImage()
        }
        
        self.msgLbl.font = defaultFont
        self.msgLbl.text = dataSource?.message(in: self)
    }

}


extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
