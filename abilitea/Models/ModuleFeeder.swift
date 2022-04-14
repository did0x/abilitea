//
//  ModuleFeeder.swift
//  abilitea
//
//  Created by Ridho Saputra on 12/04/22.
//

import Foundation
import UIKit

struct ModuleFeeder {
    
    var arrOfModule : [Module] = []
    
    init() {
        let module0 = Module(title: "Reading Comprehension", image: UIImage(named: "module-rc"), completed: false)
        let module1 = Module(title: "Critical Thinking", image: UIImage(named: "module-ct"), completed: false)
        let module2 = Module(title: "Numerical Reasoning", image: UIImage(named: "module-nr"), completed: false)
        let module3 = Module(title: "Attention To Detail", image: UIImage(named: "module-atd"), completed: false)
        let module4 = Module(title: "Problem Solving", image: UIImage(named: "module-ps"), completed: false)
        let module5 = Module(title: "Spatial Reasoning", image: UIImage(named: "module-sr"), completed: false)
        
        arrOfModule.append(module0)
        arrOfModule.append(module1)
        arrOfModule.append(module2)
        arrOfModule.append(module3)
        arrOfModule.append(module4)
        arrOfModule.append(module5)
    }
}
