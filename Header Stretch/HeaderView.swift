//
//  HeaderView.swift
//  Header Stretch
//
//  Created by Nolan Fuchs on 1/8/19.
//  Copyright © 2019 Nolan Fuchs. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
 
    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "real-estate-iphone-app-template-cover"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        addSubview(imageView)
        imageView.fillSuperview()
        
        // Blur
        setupVisualEffectBlur()
        
    }
    
    var animator: UIViewPropertyAnimator!
    
    func setupVisualEffectBlur() {
        
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
            // treat this as end state for animation
            
            let blurEffect = UIBlurEffect(style: .regular)
            let setupVisualEffectView = UIVisualEffectView(effect: blurEffect)
            
            self?.addSubview(setupVisualEffectView)
            setupVisualEffectView.fillSuperview()
        })
        
      
        
       
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
