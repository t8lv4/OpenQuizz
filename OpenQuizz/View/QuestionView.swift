//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Morgan on 30/03/2018.
//  Copyright © 2018 Morgan. All rights reserved.
//

import UIKit

class QuestionView: UIView {
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            icon.image = #imageLiteral(resourceName: "Icon Correct")
            icon.isHidden = false
            backgroundColor = #colorLiteral(red: 0.7821125388, green: 0.9267562628, blue: 0.6265553832, alpha: 1)
        case .incorrect:
            icon.isHidden = false
            icon.image = #imageLiteral(resourceName: "Icon Error")
            backgroundColor = #colorLiteral(red: 0.9524670243, green: 0.5314292908, blue: 0.578404367, alpha: 1)
        case .standard:
            icon.isHidden = true
            backgroundColor = #colorLiteral(red: 0.7496153712, green: 0.7689301372, blue: 0.7861254811, alpha: 1)
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
}
