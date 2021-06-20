//
//  UIHelper.swift
//  Medical App
//
//  Created by eslam on 6/20/21.
//

import UIKit


struct UIHelper{

static func createFlowLayout(in superView: UIView)-> UICollectionViewLayout{

    let width                       = superView.bounds.width
    let height                      = superView.bounds.height
    let padding: CGFloat            = 15
    let minimumItemSpacing: CGFloat = 15
    let availableWidth              = width - (padding * 2) - minimumItemSpacing
    let itemSize                    = availableWidth / 2
    let availableHeight             = height - (padding * 2) - minimumItemSpacing - 150
    let itemHeight                  = availableHeight / 2
    let flowLayout                  = UICollectionViewFlowLayout()
    flowLayout.sectionInset         = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
    flowLayout.itemSize             = CGSize(width: itemSize, height: itemHeight)
    return flowLayout
    
    

}
    
    
    
}
