//
//  ViewController.swift
//  ScrollViewProject
//
//  Created by Furkan sakızcı on 23.08.2019.
//  Copyright © 2019 Furkan sakızcı. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate {

    let numberOfPages :Int = 2
   var colors:[UIColor] = [.blue, .green, .yellow]
    var views:[UIView] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollPage()
    }
    func scrollPage(){
        
        let scrollView : UIScrollView = UIScrollView(frame: CGRect(x:0, y: 120,width: 385, height: 550))
        scrollView.isPagingEnabled = true
        scrollView.backgroundColor = .white
        view.addSubview(scrollView)
        let padding : CGFloat = 1
        let viewWidth = scrollView.frame.size.width - 2 * padding
        let viewHeight = scrollView.frame.size.height - 2 * padding
        
        var x : CGFloat = 0
        
        for i in 0...numberOfPages{
            let view:UIView = UIView(frame: CGRect(x: x + padding, y: padding, width: viewWidth, height: viewHeight))
            view.backgroundColor = colors[i]
            scrollView .addSubview(view)
            x = view.frame.origin.x + viewWidth + padding
        }
        scrollView.contentSize = CGSize(width:x+padding, height:scrollView.frame.size.height)
    }
}

