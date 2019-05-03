
# Food App UI Animation - iOS

<a target="_blank" href="LICENSE"><img src="https://img.shields.io/badge/licence-MIT-brightgreen.svg" alt="license : MIT"></a>
<a target="_blank" href="https://www.cmarix.com/ios-app-development-company-india.html"><img src="https://img.shields.io/badge/platform-iOS-blue.svg" alt="platform : iOS"></a>

<center><img src="http://www.cmarix.com/git/Mobile/food-iOS-UI-Animation.gif"/> </center>

View the design on  <a target="_blank" href="https://www.uplabs.com/posts/food-app-ui-animation">Uplabs</a> /  <a target="_blank" href="https://dribbble.com/shots/5727961-Food-App-UI-Animation">Dribbble</a> / <a target="_blank" href="https://www.behance.net/gallery/74459929/Food-App-UI-Animation">Behance</a>

## Core Features ##

- Animation and illustration to represent the features of Food Menu and add favorite toppings in your food 
- View animation by tapping on previous & next arrow icon for food menu product
- View animation on add favorite topping in your food

## How it works ##

- User can select food product menu
- After tapping on the food product menu, view all the food products with animation and illustration 
- Once click on the previous or next arrow icon, the next food item will appear on the screen with the animation & illustration   
- View multiple topping related to food product at the bottom 
- Tap on favorite topping that you want to add in your food. On tap particular topping will be added into your food with animation and illustration   

## Purpose of this code ##

- Food Animation will display the illustration of actual food  
- With Animation user got more attraction from the food app 

## Requirements ##

- iOS 11

## When you can use this code ##

- When you are developing a Food Delivery Application, Food Selling or Food Making app, this code will help you to provide functionality of Animation and illustration for  food list and add the favorite topping for particular food with user friendly operations.

## Code Snippet ##

**Step 1**: View animation food list using next or previous arrow icon 

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
 
**Step 2**: View animation and illustration for favorite topping added on the particular food 

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

## Let us know! ##
We’d be really happy if you sent us links to your projects where you use our component. Just send an email to [biz@cmarix.com](mailto:biz@cmarix.com "biz@cmarix.com") and do let us know if you have any questions or suggestion regarding Food App UI Animation in iOS.

P.S. We’re going to publish more awesomeness examples on third party libaries, coding standards, plugins etc, in all the technology. Stay tuned!

## Stay Socially Connected ##

Get more familiar with our work by visiting few of our portfolio links.

[Portfolio](https://www.cmarix.com/portfolio.html) | [Facebook](https://www.facebook.com/CMARIXTechnoLabs/) | [Twitter](https://twitter.com/CMARIXTechLabs) | [Linkedin](https://www.linkedin.com/company/cmarix-technolabs-pvt-ltd-) | [Behance](https://www.behance.net/CMARIXTechnoLabs/) | [Instagram](https://instagram.com/cmarixtechnolabs/) | [Dribbble](https://dribbble.com/CMARIXTechnoLabs) | [Uplabs](https://www.uplabs.com/cmarixtechnolabs)

Please don’t forget to follow them.

## License ##

	MIT License
	
	Copyright © 2019 CMARIX TechnoLabs
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.