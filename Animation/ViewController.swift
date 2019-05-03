//
//  ViewController.swift
//  Animation
//
//  Created by CTPLMac7 on 22/02/19.
//  Copyright © 2019 CTPLMac7. All rights reserved.
//

import UIKit
import VariousViewsEffects

class ViewController: UIViewController {
    
    @IBOutlet weak var imgBurger: UIImageView?
    @IBOutlet weak var imgBurgername: UIImageView?
    @IBOutlet weak var lblPrice: UILabel?
    
    @IBOutlet weak var lbltitle: UILabel?
    @IBOutlet weak var lblSubtitle: UILabel?
    
    @IBOutlet weak var imgVegetable: UIImageView?
    @IBOutlet weak var btnCrack: UIButton?
    
    var isanimate: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgVegetable?.isHidden = true
        
        isanimate = true
        
        setNavigationBar()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Set animation of food list
    @IBAction func btnClickNext(_ sender: UIButton)
    {
        if isanimate == true
        {
            isanimate = false
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                
            }, completion: { _ in
                
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurger?.image = UIImage(named: "burger")
                
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurgername?.image = UIImage(named: "burgername")
                
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.lblPrice?.text = "12.99 $"
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                    self.imgBurger?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.imgBurgername?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.lblPrice?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    
                }, completion: nil)
                
            })
            
            let screenRect: CGRect = UIScreen.main.bounds
            var _: CGFloat = screenRect.size.width
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                self.lbltitle?.frame = CGRect(x: screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                self.lblSubtitle?.frame = CGRect(x: screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
            }) { finished in
                //position screen left after animation
                self.lbltitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                
                self.lblSubtitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
                //  Converted to Swift 4 by Swiftify v4.2.28558 - https://objectivec2swift.com/
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                    self.lbltitle?.frame = CGRect(x: self.view.center.x - (self.lbltitle!.frame.size.width/2) , y: (self.lbltitle?.frame.origin.y)!, width: self.lbltitle!.frame.size.width, height: self.lbltitle!.frame.size.height)
                    
                    self.lblSubtitle?.frame = CGRect(x: self.view.center.x - (self.lblSubtitle!.frame.size.width/2) , y: (self.lblSubtitle?.frame.origin.y)!, width: self.lblSubtitle!.frame.size.width, height: self.lblSubtitle!.frame.size.height)
                    
                    //                    self.lbltitle?.center = self.view.center
                    
                }) { finished in
                    //do something after animation
                }
            }
            
        }
        else
        {
            isanimate = true
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                
            }, completion: { _ in
                
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurger?.image = UIImage(named: "burger")
                
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurgername?.image = UIImage(named: "burgername")
                
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.lblPrice?.text = "12.99 $"
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                    self.imgBurger?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.imgBurgername?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.lblPrice?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    
                }, completion: nil)
                
            })
            
            let screenRect: CGRect = UIScreen.main.bounds
            var _: CGFloat = screenRect.size.width
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                self.lbltitle?.frame = CGRect(x: screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                self.lblSubtitle?.frame = CGRect(x: screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
            }) { finished in
                //position screen left after animation
                self.lbltitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                
                self.lblSubtitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
                //  Converted to Swift 4 by Swiftify v4.2.28558 - https://objectivec2swift.com/
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                    self.lbltitle?.frame = CGRect(x: self.view.center.x - (self.lbltitle!.frame.size.width/2) , y: (self.lbltitle?.frame.origin.y)!, width: self.lbltitle!.frame.size.width, height: self.lbltitle!.frame.size.height)
                    
                    self.lblSubtitle?.frame = CGRect(x: self.view.center.x - (self.lblSubtitle!.frame.size.width/2) , y: (self.lblSubtitle?.frame.origin.y)!, width: self.lblSubtitle!.frame.size.width, height: self.lblSubtitle!.frame.size.height)
                    
                    //                    self.lbltitle?.center = self.view.center
                    
                }) { finished in
                    //do something after animation
                }
            }
            
        }
        
    }
    @IBAction func btnClickPrevious(_ sender: UIButton)
    {
        if isanimate == true
        {
            isanimate = false
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                
            }, completion: { _ in
                
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurger?.image = UIImage(named: "burger")
                
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurgername?.image = UIImage(named: "burgername")
                
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.lblPrice?.text = "12.99 $"
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                    self.imgBurger?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.imgBurgername?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.lblPrice?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    
                }, completion: nil)
                
            })
            
            let screenRect: CGRect = UIScreen.main.bounds
            var _: CGFloat = screenRect.size.width
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                self.lbltitle?.frame = CGRect(x: screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                self.lblSubtitle?.frame = CGRect(x: screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
            }) { finished in
                //position screen left after animation
                self.lbltitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                
                self.lblSubtitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
                //  Converted to Swift 4 by Swiftify v4.2.28558 - https://objectivec2swift.com/
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                    self.lbltitle?.frame = CGRect(x: self.view.center.x - (self.lbltitle!.frame.size.width/2) , y: (self.lbltitle?.frame.origin.y)!, width: self.lbltitle!.frame.size.width, height: self.lbltitle!.frame.size.height)
                    
                    self.lblSubtitle?.frame = CGRect(x: self.view.center.x - (self.lblSubtitle!.frame.size.width/2) , y: (self.lblSubtitle?.frame.origin.y)!, width: self.lblSubtitle!.frame.size.width, height: self.lblSubtitle!.frame.size.height)
                    
                    //                    self.lbltitle?.center = self.view.center
                    
                }) { finished in
                    //do something after animation
                }
            }
            
        }
        else
        {
            isanimate = true
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                
            }, completion: { _ in
                
                self.imgBurger?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurger?.image = UIImage(named: "burger")
                
                self.imgBurgername?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.imgBurgername?.image = UIImage(named: "burgername")
                
                self.lblPrice?.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
                self.lblPrice?.text = "12.99 $"
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                    self.imgBurger?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.imgBurgername?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.lblPrice?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    
                }, completion: nil)
                
            })
            
            let screenRect: CGRect = UIScreen.main.bounds
            var _: CGFloat = screenRect.size.width
            
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                self.lbltitle?.frame = CGRect(x: screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                self.lblSubtitle?.frame = CGRect(x: screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
            }) { finished in
                //position screen left after animation
                self.lbltitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lbltitle?.frame.origin.y)!, width: (self.lbltitle?.frame.size.width)!, height: (self.lbltitle?.frame.size.height)!)
                
                self.lblSubtitle?.frame = CGRect(x: -screenRect.size.width, y: (self.lblSubtitle?.frame.origin.y)!, width: (self.lblSubtitle?.frame.size.width)!, height: (self.lblSubtitle?.frame.size.height)!)
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                    self.lbltitle?.frame = CGRect(x: self.view.center.x - (self.lbltitle!.frame.size.width/2) , y: (self.lbltitle?.frame.origin.y)!, width: self.lbltitle!.frame.size.width, height: self.lbltitle!.frame.size.height)
                    
                    self.lblSubtitle?.frame = CGRect(x: self.view.center.x - (self.lblSubtitle!.frame.size.width/2) , y: (self.lblSubtitle?.frame.origin.y)!, width: self.lblSubtitle!.frame.size.width, height: self.lblSubtitle!.frame.size.height)
                    
                    //                    self.lbltitle?.center = self.view.center
                    
                }) { finished in
                    //do something after animation
                }
            }
            
        }
        
    }
    
    // add to cart item animation
    @IBAction func btnClickCrack(_ sender: UIButton)
    {
        
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
            self.imgVegetable?.center.y = (self.imgBurger?.frame.origin.y)! + ((self.imgBurger?.frame.height)!/2)
            self.imgVegetable?.isHidden = false
            self.loadViewIfNeeded()

        }) { finished in
            self.imgVegetable?.breakGlass(size: GridSize(columns: 15, rows: 21), completion: {
                //                            self.reshowImage()
            })
        }
    }
    func setNavigationBar()
    {
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        
        let leftBarButtonItem = UIBarButtonItem(image:UIImage(named:"menu"), style: .plain, target: self, action: #selector(onclickMenu))
        leftBarButtonItem.tintColor = UIColor.white
        
        navigationItem.leftBarButtonItem = leftBarButtonItem
        
        let rightBarButtonItem = UIBarButtonItem(image:UIImage(named:"cart"), style: .plain, target: self, action: #selector(onclickcart))
        rightBarButtonItem.tintColor = UIColor.white
        leftBarButtonItem.tintColor = UIColor.white
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
    }
    
    @objc func onclickMenu()
    {
        
    }
    @objc func onclickcart()
    {
        
    }
    
}

