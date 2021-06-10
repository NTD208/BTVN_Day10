//
//  DrawBricksViewController.swift
//  BaitapBuoi10
//
//  Created by Chu Du on 10/06/2021.
//

import UIKit

class DrawBricksViewController: UIViewController {

    let squareView1:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = #colorLiteral(red: 0.9979537129, green: 0.4714148045, blue: 0.2074692547, alpha: 1)
        return view
    }()
    let squareView2:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = #colorLiteral(red: 0.9979537129, green: 0.4714148045, blue: 0.2074692547, alpha: 1)
        return view
    }()
    let squareView3:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = #colorLiteral(red: 0.9979537129, green: 0.4714148045, blue: 0.2074692547, alpha: 1)
        return view
    }()
    let squareView4:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = #colorLiteral(red: 0.9979537129, green: 0.4714148045, blue: 0.2074692547, alpha: 1)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawBrick(squareView: squareView1, x: 100, y: 500)
        drawBrick(squareView: squareView2, x: 100, y: 600)
        drawBrick(squareView: squareView3, x: 100, y: 700)
        drawBrick(squareView: squareView4, x: 200, y: 700)

    }
    
    func drawBrick(squareView:UIView, x:CGFloat, y:CGFloat) {
        self.view.addSubview(squareView)
        squareView.center = CGPoint(x: x + 50, y: y + 50)
        
        topLine(subView: squareView)
        bottomLine(subView: squareView)
        leftLine(subView: squareView)
        rightLine(subView: squareView)
        
    }
    
    func topLine(subView:UIView) {
        let lineLayer = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: subView.bounds.width, y: 0))
        path.addLine(to: CGPoint(x: subView.bounds.width - 10, y: 10))
        path.addLine(to: CGPoint(x: 10, y: 10))
        
        lineLayer.path = path.cgPath
        lineLayer.fillColor = #colorLiteral(red: 1, green: 0.6919581294, blue: 0.4607046843, alpha: 1)
        
        subView.layer.insertSublayer(lineLayer, at: 0)
    }
    
    func bottomLine(subView:UIView) {
        let lineLayer = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: subView.bounds.height))
        path.addLine(to: CGPoint(x: subView.bounds.width, y: subView.bounds.height))
        path.addLine(to: CGPoint(x: subView.bounds.width - 10, y: subView.bounds.height - 10))
        path.addLine(to: CGPoint(x: 10, y: subView.bounds.height - 10))
        
        lineLayer.path = path.cgPath
        lineLayer.fillColor = #colorLiteral(red: 0.857980907, green: 0.3737304509, blue: 0.1558412611, alpha: 1)
        
        subView.layer.insertSublayer(lineLayer, at: 0)
    }
    
    func leftLine(subView:UIView) {
        let lineLayer = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: subView.bounds.height))
        path.addLine(to: CGPoint(x: 10, y: subView.bounds.height - 10))
        path.addLine(to: CGPoint(x: 10, y: 10))
        
        lineLayer.path = path.cgPath
        lineLayer.fillColor = #colorLiteral(red: 1, green: 0.7945068479, blue: 0.6328334212, alpha: 1)
        
        subView.layer.insertSublayer(lineLayer, at: 0)
    }
    
    func rightLine(subView:UIView) {
        let lineLayer = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: subView.bounds.width, y: 0))
        path.addLine(to: CGPoint(x: subView.bounds.width, y: subView.bounds.height))
        path.addLine(to: CGPoint(x: subView.bounds.width - 10, y: subView.bounds.height - 10))
        path.addLine(to: CGPoint(x: subView.bounds.width - 10, y: 10))
        
        lineLayer.path = path.cgPath
        lineLayer.fillColor = #colorLiteral(red: 0.7488229871, green: 0.3263643682, blue: 0.1321118772, alpha: 1)
        
        subView.layer.insertSublayer(lineLayer, at: 0)
    }

}
