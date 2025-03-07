//
//  QRCodeVC.swift
//  QRCode
//
//  Created by Nirzar Gandhi on 05/03/25.
//

import UIKit

class QRCodeVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var qrCodeImage: UIImageView!
    
    
    // MARK: -
    // MARK: - View init Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "QR Code"
        
        self.setControlsProperty()
        self.setQRCode(code: UUID().uuidString)
    }
    
    fileprivate func setControlsProperty() {
        
        self.view.backgroundColor = .clear
        self.view.isOpaque = false
        
        // QR Code Image
        self.qrCodeImage.backgroundColor = .clear
        self.qrCodeImage.contentMode = .scaleAspectFit
    }
}


// MARK: - Call Back
extension QRCodeVC {
    
    fileprivate func generateQRCode(codeStr : String) -> UIImage? {
        
        let data = codeStr.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 5, y: 5)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
    
    fileprivate func setQRCode(code : String) {
        
        if let image = self.generateQRCode(codeStr: code) {
            self.qrCodeImage.image = image
        } else {
            self.qrCodeImage.image = nil
        }
    }
}
