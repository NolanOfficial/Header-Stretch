//
//  HeaderView.swift
//  Header Stretch
//
//  Created by Nolan Fuchs on 1/8/19.
//  Copyright © 2019 Nolan Fuchs. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
