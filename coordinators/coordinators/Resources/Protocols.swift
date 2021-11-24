//
//  Protocols.swift
//  Split
//
//  Created by Gustavo Isidio on 19/11/21.
//

import Foundation
import UIKit

protocol CoordinatorsViewProtocol {
    
    func addSubviews () -> Void
    func setupAutoLayout () -> Void
}

class CoordinatorsView: UIView, CoordinatorsViewProtocol {
    
    // MARK: - Initializers
    init(){
        super.init(frame: .zero)
        
        addSubviews()
        setupAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - SubViews
    internal func addSubviews() {
        [].forEach {
            //addSubview($0)
            //$0.translatesAutoresizingMaskIntoConstraints = false
         }
    }
    
    // MARK: - AutoLayout
    internal func setupAutoLayout() {
        [].forEach(NSLayoutConstraint.activate(_:))
    }
    
    
    /*
     -> SubView Exemple
     let enterBilTextView: UITextView = {
         let textView = UITextView()
         textView.text = "Enter bill total"
         textView.font = UIFont.systemFont(ofSize: 22)
         textView.textAlignment = .left
         textView.alpha = 0.4
         textView.isEditable = false
         textView.isSelectable = false
         return textView
     }()
    */
    
    /*
    -> Autolayout Exemple
    let enterBilTextViewConstraints = [
        enterBilTextView.topAnchor.constraint(equalTo: self.topAnchor, constant: 90),
        enterBilTextView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 34),
        enterBilTextView.rightAnchor.constraint(equalTo: self.rightAnchor),
        enterBilTextView.heightAnchor.constraint(equalToConstant: 50)
    ]
    */
}