//
//  ViewController.swift
//  TabbarControllerEstudo
//
//  Created by Mauro Siqueira Jr on 27/11/22.
//

import UIKit


class MyTabBarController:UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }
    
    private func setupTabBarController(){
        
        
        let Tela_01 = UINavigationController(rootViewController: Tela_01())
        let Tela_02 = UINavigationController(rootViewController: Tela_02())
        let Tela_03 = UINavigationController(rootViewController: Tela_03())
        let Tela_04 = UINavigationController(rootViewController: Tela_04())
    
        self.setViewControllers([Tela_01,Tela_02,Tela_03,Tela_04], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else {return}
        
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "star")
        
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "gear")
        
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "person")
        
        items[3].title = "Tela 04"
        items[3].image = UIImage(systemName: "trash")
    
    }
    
}



class Tela_01: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.title = "Tela-01"
    }


}

class Tela_02: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.title = "Tela-02"
    }


}

class Tela_03: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.title = "Tela-03"
    }


}
class Tela_04: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.title = "Tela-04"
    }


}
