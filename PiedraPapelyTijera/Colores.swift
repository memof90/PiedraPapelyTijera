//
//  Colores.swift
//  PiedraPapelyTijera
//
//  Created by Memo Figueredo on 1/25/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class Colores: NSObject {

    private struct Cache {
        
        static let purple: UIColor = UIColor(red: 0.627, green: 0.506, blue: 0.714, alpha: 1)
        static let green: UIColor = UIColor(red:0.02, green:0.54, blue:0.00, alpha:1.0)
        static let brown: UIColor = UIColor(red:0.86, green:0.58, blue:0.16, alpha:1.0)
        static let pink: UIColor = UIColor(red:0.86, green:0.16, blue:0.66, alpha:1.0)
        static let red: UIColor = UIColor(red:0.86, green:0.16, blue:0.29, alpha:1.0)
        static let orange: UIColor = UIColor(red:0.86, green:0.33, blue:0.16, alpha:1.0)
        static let blue: UIColor = UIColor(red:0.13, green:0.89, blue:0.80, alpha:1.0)
    }
    
    public class var purple: UIColor {return Cache.purple}
    public class var green: UIColor{return Cache.green}
    public class var brown: UIColor{return Cache.brown}
    public class var pink: UIColor{return Cache.pink}
    public class var red: UIColor{return Cache.red}
    public class var orange: UIColor{return Cache.orange}
    public class var blue: UIColor{return Cache.orange}
}
