//
//  mySegmentedControll.swift
//  KCFloatingActionButton-Sample
//
//  Created by EthanW on 2017-01-24.
//  Copyright © 2017 kciter. All rights reserved.
//

import UIKit


@IBDesignable class eventTimeSegControl: UIControl {
    
    private var segCtrlLabels = [UILabel]()
    var thumbView = UIView()
    
    var labelItems: [String] = ["Timed", "UnTimed"] {
        didSet{
            setupLabels()
        }
    }
    
    var selectedIndex : Int = 0 {
        didSet {
            displayNewSelectedndex()
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    func setupView() {
        layer.cornerRadius = frame.height/2
        layer.borderColor  = UIColor(white: 1.0, alpha: 0.5).cgColor
        layer.borderWidth  = 2
        backgroundColor    = UIColor.clear
        setupLabels()
        insertSubview(thumbView, at: 0)
        
    }
    
    func setupLabels() {
        for label in segCtrlLabels {
            label.removeFromSuperview()
        }
        segCtrlLabels.removeAll(keepingCapacity: true)
        
        for index in 1...segCtrlLabels.count - 1 {
            let label = UILabel(frame: CGRect.zero)
            label.text = labelItems[index - 1]
            label.textAlignment = .center
            label.textColor = UIColor(white: 0.5, alpha: 1.0)
            self.addSubview(label)
            segCtrlLabels.append(label)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var selectedFrame = self.bounds
        let newWidth = selectedFrame.width / CGFloat(labelItems.count)
        selectedFrame.size.width = newWidth
        
        thumbView.frame = selectedFrame
        thumbView.backgroundColor = UIColor.white
        thumbView.layer.cornerRadius = thumbView.frame.height / 2
        
        
        let labelHeight = self.bounds.height
        let labelWidth  = self.bounds.width / CGFloat(segCtrlLabels.count)
        
        for index in 0...segCtrlLabels.count - 1 {
            var label = segCtrlLabels[index]
            let xPosition = CGFloat(index) * labelWidth
            label.frame = CGRect(x: xPosition, y: 0, width: labelWidth, height: labelHeight)
        }
   
    }
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        let location  = touch.location(in: self)
        var calculatedIndex : Int?
        for (index, item) in segCtrlLabels.enumerated() {
            if item.frame.contains(location) {
                calculatedIndex = index
            }
        }
        
        if calculatedIndex != nil {
            selectedIndex = calculatedIndex!
            sendActions(for: .valueChanged)
        }
        
        return false
    }
    
    
    func displayNewSelectedndex() {
        var label = segCtrlLabels[selectedIndex]
        self.thumbView.frame = label.frame
    }


    
    
}
